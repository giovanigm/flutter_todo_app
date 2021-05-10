import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/task/form/task_form_state.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/unregistered_task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/usecases/task/register_task.dart';
import 'package:todo_app/domain/usecases/task/update_task.dart';

@injectable
class TaskFormCubit extends Cubit<TaskFormState> {
  final RegisterTask _registerTask;
  final UpdateTask _updateTask;
  final AuthCubit _authCubit;

  TaskFormCubit(
    this._registerTask,
    this._updateTask,
    this._authCubit,
  ) : super(TaskFormState.initial());

  void init({Task? taskToUpdate}) {
    emit(state.copyWith(
      taskToUpdate: taskToUpdate,
      description: taskToUpdate?.description ?? "",
    ));
  }

  void setDescription(String value) {
    emit(state.copyWith(description: value));
  }

  void submit() {
    final user = _authCubit.state.user;

    if (user == null) {
      return emit(state.copyWith(errorMessage: "Usuário não autenticado"));
    }

    if (!state.isSubmitting) {
      emit(state.copyWith(isSubmitting: true));
    }

    if (state.isEditing) {
      updateTask(user);
    } else {
      registerTask(user);
    }
  }

  Future<void> updateTask(User user) async {
    final taskToUpdate = state.taskToUpdate;

    if (taskToUpdate == null) {
      return;
    }

    final updatedTask = taskToUpdate.copyWith(description: state.description);

    final result = await _updateTask(
      task: updatedTask,
      user: user,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(didSubmit: true, isSubmitting: false));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isSubmitting: false));
      },
    );
  }

  Future<void> registerTask(User user) async {
    final unregisteredTask = UnregisteredTask(description: state.description);

    final result = await _registerTask(
      unregisteredTask: unregisteredTask,
      user: user,
    );

    result.when(
      success: (_) {
        emit(state.copyWith(didSubmit: true, isSubmitting: false));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isSubmitting: false));
      },
    );
  }
}
