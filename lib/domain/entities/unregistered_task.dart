import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'unregistered_task.freezed.dart';

@freezed
class UnregisteredTask with _$UnregisteredTask {
  const factory UnregisteredTask({
    required String description,
  }) = _UnregisteredTask;
}
