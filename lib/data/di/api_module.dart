import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../injection.dart';
import '../api/api.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  Api get api => Api(getIt<Dio>());
}
