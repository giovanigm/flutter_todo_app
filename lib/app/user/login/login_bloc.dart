import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/user/login/login_event.dart';
import 'package:todo_app/app/user/login/login_state.dart';
import 'package:todo_app/domain/usecases/user/login.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login _login;
  final AuthCubit _authCubit;

  LoginBloc(this._login, this._authCubit) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.when(
      emailChanged: (value) async* {
        yield state.copyWith(email: value);
      },
      passwordChanged: (value) async* {
        yield state.copyWith(password: value);
      },
      submitted: () async* {
        if (!state.isAuthenticating) {
          yield state.copyWith(isAuthenticating: true, errorMessage: null);
        }

        final result = await _login(
          email: state.email,
          password: state.password,
        );

        yield* result.when(
          success: (user) async* {
            _authCubit.setUser(user);
            yield state.copyWith(
                didAuthenticate: true, isAuthenticating: false);
          },
          error: (message) async* {
            yield state.copyWith(
                errorMessage: message, isAuthenticating: false);
          },
        );
      },
    );
  }
}
