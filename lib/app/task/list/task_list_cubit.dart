import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/task/list/task_list_state.dart';
import 'package:todo_app/domain/usecases/user/logout.dart';

@injectable
class TaskListCubit extends Cubit<TaskListState> {
  final Logout _logout;

  TaskListCubit(this._logout) : super(TaskListState.initial());

  Future<void> logout() async {
    if (!state.isLoggingOut) {
      emit(state.copyWith(isLoggingOut: true));
    }

    final result = await _logout();

    result.when(
      success: (_) {
        emit(state.copyWith(didLogOut: true, isLoggingOut: false));
      },
      error: (message) {
        emit(state.copyWith(errorMessage: message, isLoggingOut: false));
      },
    );
  }
}
