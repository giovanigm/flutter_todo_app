import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/splash/splash_cubit.dart';
import 'package:todo_app/app/splash/splash_state.dart';
import 'package:todo_app/app/task/list/task_list_page.dart';
import 'package:todo_app/app/user/login/login_page.dart';
import 'package:todo_app/injection.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => getIt<SplashCubit>(),
        child: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              authenticated: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => TaskListPage()));
              },
              unauthenticated: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            );
          },
          child: const _Content(),
        ),
      ),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content({
    Key? key,
  }) : super(key: key);

  @override
  __ContentState createState() => __ContentState();
}

class __ContentState extends State<_Content> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      context.read<SplashCubit>().checkAuth();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Splash Page"),
    );
  }
}
