import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/unregistered_user.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@injectable
class RegisterUser {
  final UserRepository _repository;

  RegisterUser(this._repository);

  Future<Result<User>> call(UnregisteredUser unregisteredUser) =>
      _repository.registerUser(unregisteredUser);
}
