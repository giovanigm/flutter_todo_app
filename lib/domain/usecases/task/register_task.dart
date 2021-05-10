import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/unregistered_task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

@injectable
class RegisterTask {
  final TaskRepository _repository;

  RegisterTask(this._repository);

  Future<Result<Task>> call({
    required UnregisteredTask unregisteredTask,
    required User user,
  }) =>
      _repository.registerTask(
        user: user,
        unregisteredTask: unregisteredTask,
      );
}
