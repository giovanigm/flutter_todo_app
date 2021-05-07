import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/unregistered_user.dart';
import 'package:todo_app/domain/entities/user.dart';

abstract class UserRepository {
  Future<Result<User>> getAuthenticatedUser();
  Future<Result<User>> registerUser(UnregisteredUser unregisteredUser);
  Future<Result<User>> login({required String email, required String password});
  Future<Result<void>> logout(User user);
}
