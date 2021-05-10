import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_app/domain/entities/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required User? user,
    required bool isLoggingOut,
    required bool didLogOut,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        user: null,
        isLoggingOut: false,
        didLogOut: false,
      );
}
