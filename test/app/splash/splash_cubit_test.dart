import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/app/auth/auth_cubit.dart';
import 'package:todo_app/app/splash/splash_cubit.dart';
import 'package:todo_app/app/splash/splash_state.dart';
import 'package:todo_app/domain/core/result.dart';
import 'package:todo_app/domain/entities/user.dart';
import 'package:todo_app/domain/usecases/user/get_authenticated_user.dart';

import 'splash_cubit_test.mocks.dart';

@GenerateMocks([GetAuthenticatedUser, AuthCubit])
void main() {
  late MockAuthCubit mockAuthCubit;
  late MockGetAuthenticatedUser mockGetAuthenticatedUser;
  late User user;
  late SplashCubit splashCubit;

  setUp(() {
    mockAuthCubit = MockAuthCubit();
    mockGetAuthenticatedUser = MockGetAuthenticatedUser();
    user = const User(
      id: "123",
      name: "Teste",
      age: 20,
      email: "teste@teste.com",
      token: "token",
    );
    splashCubit = SplashCubit(mockGetAuthenticatedUser, mockAuthCubit);
  });

  tearDown(() {
    splashCubit.close();
  });

  group('SplashCubit', () {
    blocTest<SplashCubit, SplashState>(
      'should authenticate',
      build: () {
        when(mockGetAuthenticatedUser())
            .thenAnswer((_) async => Result.success(value: user));

        return splashCubit;
      },
      act: (cubit) => cubit.checkAuth(),
      expect: () => [const SplashState.authenticated()],
      verify: (cubit) {
        verify(mockAuthCubit.setUser(user));
        verifyNoMoreInteractions(mockAuthCubit);
      },
    );

    blocTest<SplashCubit, SplashState>(
      'should not authenticate',
      build: () {
        when(mockGetAuthenticatedUser())
            .thenAnswer((_) async => const Result.error());

        return splashCubit;
      },
      act: (cubit) => cubit.checkAuth(),
      expect: () => [const SplashState.unauthenticated()],
      verify: (cubit) {
        verifyZeroInteractions(mockAuthCubit);
      },
    );
  });
}
