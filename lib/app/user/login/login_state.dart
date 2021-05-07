import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    required bool isAuthenticating,
    required bool didAuthenticate,
    String? errorMessage,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        email: "",
        password: "",
        isAuthenticating: false,
        didAuthenticate: false,
      );
}
