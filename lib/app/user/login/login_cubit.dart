import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/user/login/login_state.dart';
import 'package:todo_app/domain/usecases/user/login.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final Login _login;

  LoginCubit(this._login) : super(LoginState.initial());

  void setEmail(String value) {
    emit(state.copyWith(email: value));
  }

  void setPassword(String value) {
    emit(state.copyWith(password: value));
  }

  Future<void> login() async {
    if (!state.isAuthenticating) {
      emit(state.copyWith(isAuthenticating: true, errorMessage: null));
    }

    final result = await _login(
      email: state.email,
      password: state.password,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(didAuthenticate: true, isAuthenticating: false));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isAuthenticating: false));
      },
    );
  }
}
