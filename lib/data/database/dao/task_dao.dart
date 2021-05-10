import 'package:floor/floor.dart';
import 'package:todo_app/data/database/dao/base_dao.dart';
import 'package:todo_app/data/model/task_data.dart';

@dao
abstract class TaskDao extends BaseDao<TaskData> {
  @Query("SELECT * FROM Tasks")
  Stream<List<TaskData>> watchTasks();
}
