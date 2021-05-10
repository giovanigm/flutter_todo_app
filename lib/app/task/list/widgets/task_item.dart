import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/task/form/task_form.dart';
import 'package:todo_app/app/task/list/task_list_cubit.dart';
import 'package:todo_app/domain/entities/task.dart';

enum TaskAction { edit, delete }

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: task.isCompleted,
      title: Text(task.description),
      onChanged: (value) {
        context.read<TaskListCubit>().setTaskCompleted(
              task: task,
              isCompleted: value ?? false,
            );
      },
      secondary: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Material(
          color: Colors.transparent,
          child: PopupMenuButton<TaskAction>(
            onSelected: (value) async {
              switch (value) {
                case TaskAction.edit:
                  await await showModalBottomSheet(
                    context: context,
                    builder: (context) => TaskForm(task: task),
                  );
                  break;
                case TaskAction.delete:
                  context.read<TaskListCubit>().deleteTask(task: task);
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem<TaskAction>(
                  value: TaskAction.edit,
                  child: ListTile(
                    title: Text("Editar"),
                  )),
              const PopupMenuItem<TaskAction>(
                  value: TaskAction.delete,
                  child: ListTile(
                    title: Text("Excluir"),
                  )),
            ],
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Icon(Icons.edit),
            ),
          ),
        ),
      ),
    );
  }
}
