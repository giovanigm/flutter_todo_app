import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:todo_app/data/api/requests/user/login_request.dart';
import 'package:todo_app/data/api/responses/user/auth_user_response.dart';
import 'package:todo_app/data/model/unregistered_user_data.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://api-nodejs-todolist.herokuapp.com/")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  @POST("/user/register")
  Future<AuthUserResponse> registerUser(
    @Body() UnregisteredUserData unregisteredUser,
  );

  @POST("/user/login")
  Future<AuthUserResponse> login(
    @Body() LoginRequest loginRequest,
  );

  @POST("/user/logout")
  Future<AuthUserResponse> logout(@Header("Authorization") String token);
}
