import 'package:floor/floor.dart';
import 'package:todo_app/data/database/dao/base_dao.dart';
import 'package:todo_app/data/model/user_data.dart';

@dao
abstract class UserDao extends BaseDao<UserData> {
  @Query("SELECT * FROM Users LIMIT 1")
  Future<UserData?> getUser();
}
