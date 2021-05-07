import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/splash/splash_page.dart';
import 'package:todo_app/app/task/list/task_list_cubit.dart';
import 'package:todo_app/app/task/list/task_list_state.dart';
import 'package:todo_app/injection.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return BlocProvider<TaskListCubit>(
      create: (context) => getIt<TaskListCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tarefas"),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.read<TaskListCubit>().logout();
                },
              ),
            )
          ],
        ),
        body: const _TaskListContent(),
      ),
    );
  }
}

class _TaskListContent extends StatefulWidget {
  const _TaskListContent({
    Key? key,
  }) : super(key: key);

  @override
  __TaskListContentState createState() => __TaskListContentState();
}

class __TaskListContentState extends State<_TaskListContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskListCubit, TaskListState>(
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
          showDialog(
            context: context,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        }
        if (state.didLogOut) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SplashPage()),
          );
        }
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
