import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:todo_app/data/database/dao/core_dao.dart';
import 'package:todo_app/data/database/dao/task_dao.dart';
import 'package:todo_app/data/database/dao/user_dao.dart';
import 'package:todo_app/data/model/task_data.dart';
import 'package:todo_app/data/model/user_data.dart';

part 'database.g.dart';

@Database(version: 1, entities: [
  UserData,
  TaskData,
])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;

  TaskDao get taskDao;

  CoreDao get coreDao;

  static const databaseName = "app_database.db";
}
