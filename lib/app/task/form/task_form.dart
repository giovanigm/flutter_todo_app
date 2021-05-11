import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/core/extensions/context_extensions.dart';
import 'package:todo_app/app/task/form/task_form_cubit.dart';
import 'package:todo_app/app/task/form/task_form_state.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/injection.dart';

class TaskForm extends StatelessWidget {
  final Task? task;

  const TaskForm({
    Key? key,
    this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskFormCubit>(
      create: (context) => getIt<TaskFormCubit>()..init(taskToUpdate: task),
      child: _Form(
        task: task,
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final Task? task;

  const _Form({
    Key? key,
    this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskFormCubit, TaskFormState>(
      listenWhen: (previous, current) {
        if (previous.errorMessage != current.errorMessage &&
            current.errorMessage != null) {
          context.showSnackBar(
            content: Text(current.errorMessage ?? ""),
            behavior: SnackBarBehavior.floating,
          );
        }

        return previous != current;
      },
      listener: (context, state) {
        if (state.didSubmit) {
          Navigator.of(context).pop();
          context.showSnackBar(
            content: Text(getSuccessMessage(isEditing: state.isEditing)),
          );
        }
      },
      builder: (context, state) => SizedBox(
        height: 80,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(labelText: "Descrição"),
                  initialValue: state.description,
                  onChanged: (value) =>
                      context.read<TaskFormCubit>().setDescription(value),
                )),
                if (state.isSubmitting)
                  const CircularProgressIndicator()
                else
                  IconButton(
                    icon: const Icon(Icons.send),
                    color: Colors.blue,
                    onPressed: () {
                      context.read<TaskFormCubit>().submit();
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getSuccessMessage({required bool isEditing}) {
    final action = isEditing ? "alterada" : "criada";

    return "Tarefa $action com sucesso!";
  }
}
