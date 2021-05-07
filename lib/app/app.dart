import 'package:flutter/material.dart' hide Router;
import 'package:todo_app/app/splash/splash_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      title: 'TodoApp',
      debugShowCheckedModeBanner: false,
    );
  }
}
