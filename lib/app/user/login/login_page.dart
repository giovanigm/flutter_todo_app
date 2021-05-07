import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/task/list/task_list_page.dart';
import 'package:todo_app/app/user/login/login_bloc.dart';
import 'package:todo_app/app/user/login/login_event.dart';
import 'package:todo_app/app/user/login/login_state.dart';
import 'package:todo_app/app/user/register/register_page.dart';
import 'package:todo_app/injection.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listenWhen: (previous, current) {
            if (previous.isAuthenticating && !current.isAuthenticating) {
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
            if (state.isAuthenticating) {
              showDialog(
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              );
            }
            if (state.didAuthenticate) {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => TaskListPage()),
                (route) => false,
              );
            }
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "E-mail"),
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.emailChanged(value)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Senha"),
                    obscureText: true,
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.passwordChanged(value)),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(const LoginEvent.submitted());
                    },
                    child: const Text("Login"),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => RegisterPage()));
                    },
                    child: const Text("Cadastre-se"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
