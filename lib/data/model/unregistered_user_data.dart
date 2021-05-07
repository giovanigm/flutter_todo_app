import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entities/unregistered_user.dart';

part 'unregistered_user_data.g.dart';

@JsonSerializable()
class UnregisteredUserData {
  final String name;

  final int age;

  final String email;

  final String password;

  UnregisteredUserData({
    required this.name,
    required this.age,
    required this.email,
    required this.password,
  });

  UnregisteredUser toEntity() => UnregisteredUser(
        name: name,
        age: age,
        email: email,
        password: password,
      );

  factory UnregisteredUserData.fromEntity(UnregisteredUser entity) =>
      UnregisteredUserData(
        name: entity.name,
        age: entity.age,
        email: entity.email,
        password: entity.password,
      );

  factory UnregisteredUserData.fromJson(Map<String, dynamic> json) =>
      _$UnregisteredUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UnregisteredUserDataToJson(this);
}
