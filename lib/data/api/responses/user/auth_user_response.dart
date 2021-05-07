import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/model/user_data.dart';

part 'auth_user_response.g.dart';

@JsonSerializable()
class AuthUserResponse {
  final UserData user;
  final String token;

  AuthUserResponse({
    required this.user,
    required this.token,
  });

  factory AuthUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserResponseToJson(this);
}
