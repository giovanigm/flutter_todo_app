import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/app/core/extensions/context_extensions.dart';
import 'package:todo_app/app/task/list/task_list_page.dart';
import 'package:todo_app/app/user/register/register_cubit.dart';
import 'package:todo_app/app/user/register/register_state.dart';
import 'package:todo_app/injection.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: BlocProvider<RegisterCubit>(
        create: (context) => getIt<RegisterCubit>(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listenWhen: (previous, current) {
            if (previous.isRegistering && !current.isRegistering) {
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
            if (state.isRegistering) {
              context.showProgressDialog();
            }
            if (state.didRegister) {
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
                    decoration: const InputDecoration(labelText: "Nome"),
                    onChanged: (value) =>
                        context.read<RegisterCubit>().setName(value),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Idade"),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        context.read<RegisterCubit>().setAge(value),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "E-mail"),
                    onChanged: (value) =>
                        context.read<RegisterCubit>().setEmail(value),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Senha"),
                    onChanged: (value) =>
                        context.read<RegisterCubit>().setPassword(value),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<RegisterCubit>().register();
                    },
                    child: const Text("Cadastrar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
