import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/repositories/user_repository.dart';

@injectable
class Logout {
  final UserRepository _repository;

  Logout(this._repository);

  Future<Result<void>> call() =>
      _repository.getAuthenticatedUser().then((result) {
        if (result is Error) return result;

        final user = (result as Success<User>).value;

        if (user == null) {
          return const Result.error(
              message: "Não foi possível encontrar o usuário");
        }

        return _repository.logout(user);
      });
}
