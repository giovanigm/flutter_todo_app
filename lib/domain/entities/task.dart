import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String description,
    required bool isCompleted,
  }) = _Task;
}
