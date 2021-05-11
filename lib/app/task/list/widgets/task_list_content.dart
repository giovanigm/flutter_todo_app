import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/core/extensions/context_extensions.dart';
import 'package:todo_app/app/task/list/task_list_state.dart';
import 'package:todo_app/app/task/list/widgets/task_item.dart';

import '../task_list_cubit.dart';

class TaskListContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskListCubit, TaskListState>(
      listenWhen: (previous, current) {
        if (previous.errorMessage != current.errorMessage &&
            current.errorMessage != null) {
          context.showSnackBar(content: Text(current.errorMessage ?? ""));
        }

        return previous != current;
      },
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.tasks.isEmpty) {
          return const Center(
            child: Text("Não há tarefas cadastradas"),
          );
        }

        return ListView.separated(
          itemCount: state.tasks.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final task = state.tasks[index];

            return TaskItem(task: task);
          },
        );
      },
    );
  }
}
