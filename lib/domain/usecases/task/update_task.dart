import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

@injectable
class UpdateTask {
  final TaskRepository _repository;

  UpdateTask(this._repository);

  Future<Result<void>> call({required Task task, required User user}) =>
      _repository.updateTask(
        user: user,
        task: task,
      );
}
