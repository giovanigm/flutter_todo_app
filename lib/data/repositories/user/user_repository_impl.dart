import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/data/model/unregistered_user_data.dart';
import 'package:todo_app/data/model/user_data.dart';
import 'package:todo_app/data/repositories/user/user_local_data_source.dart';
import 'package:todo_app/data/repositories/user/user_remote_data_source.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/entities/unregistered_user.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource _localDataSource;
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Result<User>> registerUser(UnregisteredUser unregisteredUser) async {
    try {
      final unregisteredUserData =
          UnregisteredUserData.fromEntity(unregisteredUser);

      final userData =
          await _remoteDataSource.registerUser(unregisteredUserData);

      await _localDataSource.insertUser(userData);

      final user = userData.toEntity();

      return Result.success(value: user);
    } catch (error) {
      switch (error.runtimeType) {
        case DioError:
          final response = (error as DioError).response;
          return Result.error(message: response?.data?.toString());
      }
      return Result.error(message: "$error");
    }
  }

  @override
  Future<Result<User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userData =
          await _remoteDataSource.login(email: email, password: password);

      await _localDataSource.insertUser(userData);

      final user = userData.toEntity();

      return Result.success(value: user);
    } catch (error) {
      switch (error.runtimeType) {
        case DioError:
          final response = (error as DioError).response;
          return Result.error(message: response?.data?.toString());
      }
      return Result.error(message: "$error");
    }
  }

  @override
  Future<Result<void>> logout(User user) async {
    try {
      final userData = UserData.fromEntity(user);
      await _remoteDataSource.logout(userData.token ?? "");
      await _localDataSource.deleteUser(userData);

      return const Result.success();
    } catch (error) {
      switch (error.runtimeType) {
        case DioError:
          final response = (error as DioError).response;
          return Result.error(message: response?.data?.toString());
      }
      return Result.error(message: "$error");
    }
  }

  @override
  Future<Result<User>> getAuthenticatedUser() async {
    try {
      final userData = await _localDataSource.getUser();

      if (userData == null) {
        return const Result.error(
            message: "Não foi possível encontrar o usuário");
      }

      final user = userData.toEntity();
      return Result.success(value: user);
    } catch (error) {
      return Result.error(message: "$error");
    }
  }
}
