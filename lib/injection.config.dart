// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/splash/splash_cubit.dart' as _i17;
import 'app/user/login/login_bloc.dart' as _i13;
import 'app/user/login/login_cubit.dart' as _i14;
import 'app/user/register/register_cubit.dart' as _i18;
import 'data/api/api.dart' as _i3;
import 'data/database/dao/user_dao.dart' as _i6;
import 'data/database/database.dart' as _i4;
import 'data/di/api_module.dart' as _i19;
import 'data/di/database_module.dart' as _i20;
import 'data/repositories/user/user_local_data_source.dart' as _i7;
import 'data/repositories/user/user_remote_data_source.dart' as _i8;
import 'data/repositories/user/user_repository_impl.dart' as _i10;
import 'domain/repositories/user_repository.dart' as _i9;
import 'domain/usecases/user/get_authenticated_user.dart' as _i11;
import 'domain/usecases/user/login.dart' as _i12;
import 'domain/usecases/user/logout.dart' as _i15;
import 'domain/usecases/user/register_user.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiModule = _$ApiModule();
  final databaseModule = _$DatabaseModule();
  gh.lazySingleton<_i3.Api>(() => apiModule.api);
  await gh.lazySingletonAsync<_i4.AppDatabase>(() => databaseModule.database,
      preResolve: true);
  gh.lazySingleton<_i5.Dio>(() => apiModule.dio);
  gh.lazySingleton<_i6.UserDao>(() => databaseModule.userDao);
  gh.lazySingleton<_i7.UserLocalDataSource>(
      () => _i7.UserLocalDataSourceImpl(get<_i6.UserDao>()));
  gh.lazySingleton<_i8.UserRemoteDataSource>(
      () => _i8.UserRemoteDataSourceImpl(get<_i3.Api>()));
  gh.lazySingleton<_i9.UserRepository>(() => _i10.UserRepositoryImpl(
      get<_i7.UserLocalDataSource>(), get<_i8.UserRemoteDataSource>()));
  gh.factory<_i11.GetAuthenticatedUser>(
      () => _i11.GetAuthenticatedUser(get<_i9.UserRepository>()));
  gh.factory<_i12.Login>(() => _i12.Login(get<_i9.UserRepository>()));
  gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(get<_i12.Login>()));
  gh.factory<_i14.LoginCubit>(() => _i14.LoginCubit(get<_i12.Login>()));
  gh.factory<_i15.Logout>(() => _i15.Logout(get<_i9.UserRepository>()));
  gh.factory<_i16.RegisterUser>(
      () => _i16.RegisterUser(get<_i9.UserRepository>()));
  gh.factory<_i17.SplashCubit>(
      () => _i17.SplashCubit(get<_i11.GetAuthenticatedUser>()));
  gh.factory<_i18.RegisterCubit>(
      () => _i18.RegisterCubit(get<_i16.RegisterUser>()));
  return get;
}

class _$ApiModule extends _i19.ApiModule {}

class _$DatabaseModule extends _i20.DatabaseModule {}
