import 'package:injectable/injectable.dart';
import 'package:todo_app/data/database/dao/core_dao.dart';
import 'package:todo_app/data/database/dao/task_dao.dart';
import 'package:todo_app/data/database/dao/user_dao.dart';
import 'package:todo_app/data/database/database.dart';

import '../../injection.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @lazySingleton
  Future<AppDatabase> get database =>
      $FloorAppDatabase.databaseBuilder(AppDatabase.databaseName).build();

  @lazySingleton
  UserDao get userDao => getIt<AppDatabase>().userDao;

  @lazySingleton
  TaskDao get taskDao => getIt<AppDatabase>().taskDao;

  @lazySingleton
  CoreDao get coreDao => getIt<AppDatabase>().coreDao;
}
