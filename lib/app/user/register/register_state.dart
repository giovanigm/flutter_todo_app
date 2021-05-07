import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required String name,
    required String age,
    required String email,
    required String password,
    required bool isRegistering,
    required bool didRegister,
    String? errorMessage,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
        name: "",
        age: "",
        email: "",
        password: "",
        isRegistering: false,
        didRegister: false,
      );
}
