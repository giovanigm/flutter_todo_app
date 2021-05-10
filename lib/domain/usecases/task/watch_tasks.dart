import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

@injectable
class WatchTasks {
  final TaskRepository _repository;

  WatchTasks(this._repository);

  Stream<Result<List<Task>>> call({required User user}) =>
      _repository.watchTasks(user: user);
}
