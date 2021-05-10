import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_app/domain/entities/task.dart';

part 'task_form_state.freezed.dart';

@freezed
class TaskFormState with _$TaskFormState {
  const factory TaskFormState({
    required String description,
    Task? taskToUpdate,
    required bool isSubmitting,
    required bool didSubmit,
    String? errorMessage,
  }) = _TaskFormState;

  const TaskFormState._();

  factory TaskFormState.initial() => const TaskFormState(
        description: "",
        isSubmitting: false,
        didSubmit: false,
      );

  bool get isEditing => taskToUpdate != null;
}
