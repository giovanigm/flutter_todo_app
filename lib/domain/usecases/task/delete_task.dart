import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

@injectable
class DeleteTask {
  final TaskRepository _repository;

  DeleteTask(this._repository);

  Future<Result<void>> call({required Task task, required User user}) =>
      _repository.deleteTask(
        user: user,
        task: task,
      );
}
