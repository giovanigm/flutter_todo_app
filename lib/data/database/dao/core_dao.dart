import 'package:floor/floor.dart';

@dao
abstract class CoreDao {
  @transaction
  Future<void> deleteAllData() async {
    await deleteAllUsers();
    await deleteAllTasks();
  }

  @Query("DELETE FROM Users")
  Future<void> deleteAllUsers();

  @Query("DELETE FROM Tasks")
  Future<void> deleteAllTasks();
}
