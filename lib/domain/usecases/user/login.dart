import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@injectable
class Login {
  final UserRepository _repository;

  Login(this._repository);

  Future<Result<User>> call({
    required String email,
    required String password,
  }) =>
      _repository.login(email: email, password: password);
}
