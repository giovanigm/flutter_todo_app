import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/unregistered_task.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/user.dart';

abstract class TaskRepository {
  Future<Result<Task>> registerTask(
      {required User user, required UnregisteredTask unregisteredTask});
  Future<Result<void>> updateTask({required User user, required Task task});
  Future<Result<void>> deleteTask({required User user, required Task task});
  Stream<Result<List<Task>>> watchTasks({required User user});
}
