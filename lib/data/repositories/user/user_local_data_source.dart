import 'package:injectable/injectable.dart';
import 'package:todo_app/data/database/dao/user_dao.dart';
import 'package:todo_app/data/model/user_data.dart';

abstract class UserLocalDataSource {
  Future<UserData?> getUser();
  Future<void> insertUser(UserData user);
  Future<void> deleteUser(UserData user);
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final UserDao _dao;

  UserLocalDataSourceImpl(this._dao);

  @override
  Future<void> insertUser(UserData user) => _dao.insertOne(user);

  @override
  Future<void> deleteUser(UserData user) => _dao.deleteOne(user);

  @override
  Future<UserData?> getUser() => _dao.getUser();
}
