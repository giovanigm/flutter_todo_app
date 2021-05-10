import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/auth/auth_state.dart';
import 'package:todo_app/app/core/extensions/context_extensions.dart';
import 'package:todo_app/app/splash/splash_page.dart';
import 'package:todo_app/app/task/form/task_form.dart';
import 'package:todo_app/app/task/list/task_list_cubit.dart';
import 'package:todo_app/app/task/list/widgets/task_list_content.dart';
import 'package:todo_app/injection.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskListCubit>(
      create: (context) => getIt<TaskListCubit>(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (previous, current) {
          if (previous.isLoggingOut && !current.isLoggingOut) {
            Navigator.of(context).pop();
          }

          if (previous.errorMessage != current.errorMessage &&
              current.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(current.errorMessage ?? "")));
          }

          return previous != current;
        },
        listener: (context, state) {
          if (state.isLoggingOut) {
            context.showProgressDialog();
          }
          if (state.didLogOut) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SplashPage()),
            );
          }
        },
        builder: (context, authState) => Scaffold(
          appBar: AppBar(
            title: const Text("Tarefas"),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthCubit>().logout();
                },
              ),
            ],
          ),
          body: const TaskListContent(),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                context: context,
                builder: (context) => const TaskForm(),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
