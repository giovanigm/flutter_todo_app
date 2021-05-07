import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    required bool isLoading,
    required bool isLoggingOut,
    required bool didLogOut,
    String? errorMessage,
  }) = _TaskListState;

  factory TaskListState.initial() => const TaskListState(
        isLoading: true,
        isLoggingOut: false,
        didLogOut: false,
      );
}
