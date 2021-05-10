import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/auth/auth_state.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/usecases/user/logout.dart';

@LazySingleton()
class AuthCubit extends Cubit<AuthState> {
  final Logout _logout;

  AuthCubit(this._logout) : super(AuthState.initial());

  void setUser(User? user) => emit(state.copyWith(
        user: user,
        didLogOut: false,
      ));

  Future<void> logout() async {
    if (!state.isLoggingOut) {
      emit(state.copyWith(isLoggingOut: true));
    }

    final user = state.user;

    if (user == null) {
      return emit(state.copyWith(errorMessage: "Usuário não autenticado"));
    }

    final result = await _logout(user);

    result.when(
      success: (_) {
        emit(state.copyWith(
          didLogOut: true,
          isLoggingOut: false,
          user: null,
        ));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isLoggingOut: false));
      },
    );
  }
}
