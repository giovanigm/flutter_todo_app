import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/splash/splash_page.dart';
import 'package:todo_app/injection.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => getIt<AuthCubit>(),
      child: MaterialApp(
        home: SplashPage(),
        title: 'TodoApp',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
