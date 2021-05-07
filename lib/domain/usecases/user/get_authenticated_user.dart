import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@injectable
class GetAuthenticatedUser {
  final UserRepository _repository;

  GetAuthenticatedUser(this._repository);

  Future<Result<User>> call() => _repository.getAuthenticatedUser();
}
