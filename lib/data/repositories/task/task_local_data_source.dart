import 'package:injectable/injectable.dart';
import 'package:todo_app/data/database/dao/task_dao.dart';
import 'package:todo_app/data/model/task_data.dart';

abstract class TaskLocalDataSource {
  Stream<List<TaskData>> watchTasks();
  Future<void> insertTask(TaskData task);
  Future<void> insertTasks(List<TaskData> tasks);
  Future<void> updateTask(TaskData task);
  Future<void> deleteTask(TaskData task);
}

@LazySingleton(as: TaskLocalDataSource)
class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  final TaskDao _dao;

  TaskLocalDataSourceImpl(this._dao);

  @override
  Future<void> insertTask(TaskData task) => _dao.insertOne(task);

  @override
  Future<void> deleteTask(TaskData task) => _dao.deleteOne(task);

  @override
  Future<void> updateTask(TaskData task) => _dao.updateOne(task);

  @override
  Stream<List<TaskData>> watchTasks() => _dao.watchTasks();

  @override
  Future<void> insertTasks(List<TaskData> tasks) => _dao.insertMany(tasks);
}
