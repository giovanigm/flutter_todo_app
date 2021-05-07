import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;
  const factory SplashState.authenticated() = Authenticated;
  const factory SplashState.unauthenticated() = Unauthenticated;
}
