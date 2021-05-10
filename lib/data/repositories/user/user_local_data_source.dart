import 'package:injectable/injectable.dart';
import 'package:todo_app/data/database/dao/core_dao.dart';
import 'package:todo_app/data/database/dao/user_dao.dart';
import 'package:todo_app/data/model/user_data.dart';

abstract class UserLocalDataSource {
  Future<UserData?> getUser();
  Future<void> insertUser(UserData user);
  Future<void> logout();
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final UserDao _dao;
  final CoreDao _coreDao;

  UserLocalDataSourceImpl(this._dao, this._coreDao);

  @override
  Future<void> insertUser(UserData user) => _dao.insertOne(user);

  @override
  Future<UserData?> getUser() => _dao.getUser();

  @override
  Future<void> logout() => _coreDao.deleteAllData();
}
