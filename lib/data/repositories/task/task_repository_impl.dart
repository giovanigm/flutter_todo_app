import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/model/task_data.dart';
import 'package:todo_app/data/model/unregistered_task_data.dart';
import 'package:todo_app/data/repositories/task/task_local_data_source.dart';
import 'package:todo_app/data/repositories/task/task_remote_data_source.dart';
import 'package:todo_app/domain/entities/task.dart';
import 'package:todo_app/domain/entities/unregistered_task.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/task_repository.dart';

@LazySingleton(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskLocalDataSource _localDataSource;
  final TaskRemoteDataSource _remoteDataSource;

  TaskRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Stream<Result<List<Task>>> watchTasks({required User user}) =>
      _localDataSource.watchTasks().asyncMap((localTasks) async {
        if (localTasks.isEmpty) {
          final remoteTasks =
              await _remoteDataSource.getTasks(token: user.token);
          _localDataSource.insertTasks(remoteTasks);
        }

        final tasks =
            localTasks.map((taskData) => taskData.toEntity()).toList();

        return Result.success(value: tasks);
      }).handleError(handleError);

  @override
  Future<Result<Task>> registerTask({
    required User user,
    required UnregisteredTask unregisteredTask,
  }) async {
    try {
      final unregisteredTaskData =
          UnregisteredTaskData.fromEntity(unregisteredTask);
      final taskData = await _remoteDataSource.registerTask(
        token: user.token,
        unregisteredTask: unregisteredTaskData,
      );

      await _localDataSource.insertTask(taskData);

      final task = taskData.toEntity();

      return Result.success(value: task);
    } catch (error) {
      return handleError(error) as Result<Task>;
    }
  }

  @override
  Future<Result<void>> updateTask({
    required User user,
    required Task task,
  }) async {
    try {
      final taskData = TaskData.fromEntity(task);
      _remoteDataSource.updateTask(token: user.token, task: taskData);
      await _localDataSource.updateTask(taskData);

      return const Result.success();
    } catch (error) {
      return handleError(error);
    }
  }

  @override
  Future<Result<void>> deleteTask({
    required User user,
    required Task task,
  }) async {
    try {
      final taskData = TaskData.fromEntity(task);
      _remoteDataSource.deleteTask(token: user.token, task: taskData);
      await _localDataSource.deleteTask(taskData);

      return const Result.success();
    } catch (error) {
      return handleError(error);
    }
  }

  Result handleError(Object error) {
    switch (error.runtimeType) {
      case DioError:
        final response = (error as DioError).response;
        return Result.error(message: response?.data?.toString());
    }
    return Result.error(message: "$error");
  }
}
