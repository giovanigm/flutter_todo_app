import 'package:injectable/injectable.dart';
import 'package:todo_app/data/api/api.dart';
import 'package:todo_app/data/api/requests/task/update_task_request.dart';
import 'package:todo_app/data/model/task_data.dart';
import 'package:todo_app/data/model/unregistered_task_data.dart';

abstract class TaskRemoteDataSource {
  Future<TaskData> registerTask({
    required String token,
    required UnregisteredTaskData unregisteredTask,
  });
  Future<void> updateTask({
    required String token,
    required TaskData task,
  });
  Future<void> deleteTask({
    required String token,
    required TaskData task,
  });
  Future<List<TaskData>> getTasks({required String token});
}

@LazySingleton(as: TaskRemoteDataSource)
class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  final Api _api;

  TaskRemoteDataSourceImpl(this._api);

  @override
  Future<TaskData> registerTask({
    required String token,
    required UnregisteredTaskData unregisteredTask,
  }) async {
    final taskResponse = await _api.registerTask(token, unregisteredTask);
    final task = taskResponse.task;

    return task;
  }

  @override
  Future<void> deleteTask({
    required String token,
    required TaskData task,
  }) =>
      _api.deleteTask(token, task.id);

  @override
  Future<List<TaskData>> getTasks({required String token}) async {
    final getTasksResponse = await _api.getTasks(token);
    final tasks = getTasksResponse.tasks;

    return tasks;
  }

  @override
  Future<void> updateTask({
    required String token,
    required TaskData task,
  }) {
    final updateTaskRequest = UpdateTaskRequest(
      description: task.description,
      isCompleted: task.isCompleted,
    );

    return _api.updateTask(token, task.id, updateTaskRequest);
  }
}
