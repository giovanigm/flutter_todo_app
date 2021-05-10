import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:todo_app/data/api/requests/task/update_task_request.dart';
import 'package:todo_app/data/api/requests/user/login_request.dart';
import 'package:todo_app/data/api/responses/task/get_tasks_response.dart';
import 'package:todo_app/data/api/responses/task/task_response.dart';
import 'package:todo_app/data/api/responses/user/auth_user_response.dart';
import 'package:todo_app/data/model/unregistered_task_data.dart';
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
  Future<void> logout(@Header("Authorization") String token);

  @GET("/task")
  Future<GetTasksResponse> getTasks(@Header("Authorization") String token);

  @POST("/task")
  Future<TaskResponse> registerTask(
    @Header("Authorization") String token,
    @Body() UnregisteredTaskData unregisteredTask,
  );

  @PUT("/task/{id}")
  Future<TaskResponse> updateTask(
    @Header("Authorization") String token,
    @Path() String id,
    @Body() UpdateTaskRequest updateTaskRequest,
  );

  @DELETE("/task/{id}")
  Future<void> deleteTask(
    @Header("Authorization") String token,
    @Path() String id,
  );
}
