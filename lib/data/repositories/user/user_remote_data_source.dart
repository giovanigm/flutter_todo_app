import 'package:injectable/injectable.dart';
import 'package:todo_app/data/api/api.dart';
import 'package:todo_app/data/api/requests/user/login_request.dart';
import 'package:todo_app/data/model/unregistered_user_data.dart';
import 'package:todo_app/data/model/user_data.dart';

abstract class UserRemoteDataSource {
  Future<UserData> registerUser(UnregisteredUserData unregisteredUser);
  Future<UserData> login({required String email, required String password});
  Future<void> logout(String token);
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Api _api;

  UserRemoteDataSourceImpl(this._api);

  @override
  Future<UserData> login({
    required String email,
    required String password,
  }) async {
    final loginRequest = LoginRequest(email: email, password: password);
    final authResponse = await _api.login(loginRequest);
    final user = authResponse.user;
    user.token = authResponse.token;

    return user;
  }

  @override
  Future<UserData> registerUser(UnregisteredUserData unregisteredUser) async {
    final authResponse = await _api.registerUser(unregisteredUser);
    final user = authResponse.user;
    user.token = authResponse.token;

    return user;
  }

  @override
  Future<void> logout(String token) => _api.logout(token);
}
