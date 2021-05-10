import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_app/domain/entities/task.dart';

part 'task_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    required List<Task> tasks,
    required bool isLoading,
    String? errorMessage,
  }) = _TaskListState;

  factory TaskListState.initial() => const TaskListState(
        tasks: [],
        isLoading: true,
      );
}
