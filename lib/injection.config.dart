// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/auth/auth_cubit.dart' as _i25;
import 'app/splash/splash_cubit.dart' as _i29;
import 'app/task/form/task_form_cubit.dart' as _i30;
import 'app/task/list/task_list_cubit.dart' as _i31;
import 'app/user/login/login_bloc.dart' as _i26;
import 'app/user/login/login_cubit.dart' as _i27;
import 'app/user/register/register_cubit.dart' as _i28;
import 'data/api/api.dart' as _i3;
import 'data/database/dao/core_dao.dart' as _i5;
import 'data/database/dao/task_dao.dart' as _i7;
import 'data/database/dao/user_dao.dart' as _i13;
import 'data/database/database.dart' as _i4;
import 'data/di/api_module.dart' as _i32;
import 'data/di/database_module.dart' as _i33;
import 'data/repositories/task/task_local_data_source.dart' as _i8;
import 'data/repositories/task/task_remote_data_source.dart' as _i9;
import 'data/repositories/task/task_repository_impl.dart' as _i11;
import 'data/repositories/user/user_local_data_source.dart' as _i14;
import 'data/repositories/user/user_remote_data_source.dart' as _i15;
import 'data/repositories/user/user_repository_impl.dart' as _i17;
import 'domain/repositories/task_repository.dart' as _i10;
import 'domain/repositories/user_repository.dart' as _i16;
import 'domain/usecases/task/delete_task.dart' as _i19;
import 'domain/usecases/task/register_task.dart' as _i23;
import 'domain/usecases/task/update_task.dart' as _i12;
import 'domain/usecases/task/watch_tasks.dart' as _i18;
import 'domain/usecases/user/get_authenticated_user.dart' as _i20;
import 'domain/usecases/user/login.dart' as _i21;
import 'domain/usecases/user/logout.dart' as _i22;
import 'domain/usecases/user/register_user.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.CoreDao>(() => databaseModule.coreDao);
  gh.lazySingleton<_i6.Dio>(() => apiModule.dio);
  gh.lazySingleton<_i7.TaskDao>(() => databaseModule.taskDao);
  gh.lazySingleton<_i8.TaskLocalDataSource>(
      () => _i8.TaskLocalDataSourceImpl(get<_i7.TaskDao>()));
  gh.lazySingleton<_i9.TaskRemoteDataSource>(
      () => _i9.TaskRemoteDataSourceImpl(get<_i3.Api>()));
  gh.lazySingleton<_i10.TaskRepository>(() => _i11.TaskRepositoryImpl(
      get<_i8.TaskLocalDataSource>(), get<_i9.TaskRemoteDataSource>()));
  gh.factory<_i12.UpdateTask>(
      () => _i12.UpdateTask(get<_i10.TaskRepository>()));
  gh.lazySingleton<_i13.UserDao>(() => databaseModule.userDao);
  gh.lazySingleton<_i14.UserLocalDataSource>(() =>
      _i14.UserLocalDataSourceImpl(get<_i13.UserDao>(), get<_i5.CoreDao>()));
  gh.lazySingleton<_i15.UserRemoteDataSource>(
      () => _i15.UserRemoteDataSourceImpl(get<_i3.Api>()));
  gh.lazySingleton<_i16.UserRepository>(() => _i17.UserRepositoryImpl(
      get<_i14.UserLocalDataSource>(), get<_i15.UserRemoteDataSource>()));
  gh.factory<_i18.WatchTasks>(
      () => _i18.WatchTasks(get<_i10.TaskRepository>()));
  gh.factory<_i19.DeleteTask>(
      () => _i19.DeleteTask(get<_i10.TaskRepository>()));
  gh.factory<_i20.GetAuthenticatedUser>(
      () => _i20.GetAuthenticatedUser(get<_i16.UserRepository>()));
  gh.factory<_i21.Login>(() => _i21.Login(get<_i16.UserRepository>()));
  gh.factory<_i22.Logout>(() => _i22.Logout(get<_i16.UserRepository>()));
  gh.factory<_i23.RegisterTask>(
      () => _i23.RegisterTask(get<_i10.TaskRepository>()));
  gh.factory<_i24.RegisterUser>(
      () => _i24.RegisterUser(get<_i16.UserRepository>()));
  gh.lazySingleton<_i25.AuthCubit>(() => _i25.AuthCubit(get<_i22.Logout>()));
  gh.factory<_i26.LoginBloc>(
      () => _i26.LoginBloc(get<_i21.Login>(), get<_i25.AuthCubit>()));
  gh.factory<_i27.LoginCubit>(
      () => _i27.LoginCubit(get<_i21.Login>(), get<_i25.AuthCubit>()));
  gh.factory<_i28.RegisterCubit>(() =>
      _i28.RegisterCubit(get<_i24.RegisterUser>(), get<_i25.AuthCubit>()));
  gh.factory<_i29.SplashCubit>(() => _i29.SplashCubit(
      get<_i20.GetAuthenticatedUser>(), get<_i25.AuthCubit>()));
  gh.factory<_i30.TaskFormCubit>(() => _i30.TaskFormCubit(
      get<_i23.RegisterTask>(), get<_i12.UpdateTask>(), get<_i25.AuthCubit>()));
  gh.factory<_i31.TaskListCubit>(() => _i31.TaskListCubit(
      get<_i18.WatchTasks>(),
      get<_i25.AuthCubit>(),
      get<_i12.UpdateTask>(),
      get<_i19.DeleteTask>()));
  return get;
}

class _$ApiModule extends _i32.ApiModule {}

class _$DatabaseModule extends _i33.DatabaseModule {}
