import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'unregistered_user.freezed.dart';

@freezed
class UnregisteredUser with _$UnregisteredUser {
  const factory UnregisteredUser({
    required String name,
    required int age,
    required String email,
    required String password,
  }) = _UnregisteredUser;
}
