// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _Api implements Api {
  _Api(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api-nodejs-todolist.herokuapp.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthUserResponse> registerUser(unregisteredUser) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(unregisteredUser.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthUserResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/user/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthUserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthUserResponse> login(loginRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthUserResponse>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/user/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthUserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> logout(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra)
        .compose(_dio.options, '/user/logout',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<GetTasksResponse> getTasks(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetTasksResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/task',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetTasksResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TaskResponse> registerTask(token, unregisteredTask) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(unregisteredTask.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TaskResponse>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/task',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TaskResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TaskResponse> updateTask(token, id, updateTaskRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updateTaskRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TaskResponse>(Options(
                method: 'PUT',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/task/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TaskResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteTask(token, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(Options(
            method: 'DELETE',
            headers: <String, dynamic>{r'Authorization': token},
            extra: _extra)
        .compose(_dio.options, '/task/$id',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
