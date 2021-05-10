import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/task/list/task_list_state.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/usecases/task/delete_task.dart';
import 'package:todo_app/domain/usecases/task/update_task.dart';
import 'package:todo_app/domain/usecases/task/watch_tasks.dart';

@injectable
class TaskListCubit extends Cubit<TaskListState> {
  final WatchTasks _watchTasks;
  final UpdateTask _updateTask;
  final DeleteTask _deleteTask;
  final AuthCubit _authCubit;

  TaskListCubit(
    this._watchTasks,
    this._authCubit,
    this._updateTask,
    this._deleteTask,
  ) : super(TaskListState.initial());

  StreamSubscription<Result<List<Task>>>? _tasksSubscription;

  void loadTasks() {
    if (!state.isLoading) {
      emit(state.copyWith(isLoading: true));
    }

    final user = _authCubit.state.user;

    if (user == null) {
      return emit(state.copyWith(errorMessage: "Usuário não autenticado"));
    }

    _tasksSubscription = _watchTasks(user: user).listen((result) {
      result.when(
        success: (tasks) {
          emit(state.copyWith(tasks: tasks ?? [], isLoading: false));
        },
        error: _handleError,
      );
    });
  }

  Future<void> setTaskCompleted({
    required Task task,
    required bool isCompleted,
  }) async {
    final user = _authCubit.state.user;

    if (user == null) {
      return emit(state.copyWith(errorMessage: "Usuário não autenticado"));
    }

    final updatedTask = task.copyWith(isCompleted: isCompleted);
    final result = await _updateTask(task: updatedTask, user: user);

    result.when(success: (_) {}, error: _handleError);
  }

  Future<void> deleteTask({required Task task}) async {
    final user = _authCubit.state.user;

    if (user == null) {
      return emit(state.copyWith(errorMessage: "Usuário não autenticado"));
    }

    final result = await _deleteTask(task: task, user: user);

    result.when(
        success: (_) {
          emit(state.copyWith());
        },
        error: _handleError);
  }

  void _handleError(String? message) {
    emit(state.copyWith(
      errorMessage: message,
      isLoading: false,
    ));
  }

  @override
  Future<void> close() {
    _tasksSubscription?.cancel();
    return super.close();
  }
}
