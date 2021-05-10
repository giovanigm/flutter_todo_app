import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@injectable
class Logout {
  final UserRepository _repository;

  Logout(this._repository);

  Future<Result<void>> call(User user) => _repository.logout(user);
}
