import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/app/splash/splash_state.dart';
import 'package:todo_app/domain/usecases/user/get_authenticated_user.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final GetAuthenticatedUser _getAuthenticatedUser;

  SplashCubit(this._getAuthenticatedUser) : super(const SplashState.initial());

  Future<void> checkAuth() async {
    final result = await _getAuthenticatedUser();

    result.when(
      success: (user) {
        emit(const SplashState.authenticated());
      },
      error: (message) {
        emit(const SplashState.unauthenticated());
      },
    );
  }
}
