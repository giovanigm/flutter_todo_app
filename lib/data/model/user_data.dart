import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entities/user.dart';

part 'user_data.g.dart';

@JsonSerializable()
@Entity(tableName: "Users")
class UserData {
  @JsonKey(name: "_id")
  @primaryKey
  final String id;

  final String name;

  final int age;

  final String email;

  String? password;

  String? token;

  UserData({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
    this.password,
    this.token,
  });

  User toEntity() => User(
        id: id,
        name: name,
        age: age,
        email: email,
        password: password,
        token: token,
      );

  factory UserData.fromEntity(User entity) => UserData(
        id: entity.id,
        name: entity.name,
        age: entity.age,
        email: entity.email,
        password: entity.password,
        token: entity.token,
      );

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
