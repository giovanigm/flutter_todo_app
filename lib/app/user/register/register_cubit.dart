import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/user/register/register_state.dart';
import 'package:todo_app/domain/entities/unregistered_user.dart';
import 'package:todo_app/domain/usecases/user/register_user.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUser _registerUser;

  RegisterCubit(this._registerUser) : super(RegisterState.initial());

  void setName(String value) {
    emit(state.copyWith(name: value));
  }

  void setAge(String value) {
    emit(state.copyWith(age: value));
  }

  void setEmail(String value) {
    emit(state.copyWith(email: value));
  }

  void setPassword(String value) {
    emit(state.copyWith(password: value));
  }

  Future<void> register() async {
    if (!state.isRegistering) {
      emit(state.copyWith(isRegistering: true, errorMessage: null));
    }

    final unregisteredUser = UnregisteredUser(
      name: state.name,
      age: int.parse(state.age),
      email: state.email,
      password: state.password,
    );

    final result = await _registerUser(unregisteredUser);

    result.when(
      success: (_) {
        emit(state.copyWith(didRegister: true, isRegistering: false));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isRegistering: false));
      },
    );
  }
}
