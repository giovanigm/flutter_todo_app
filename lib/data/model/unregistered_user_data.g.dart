// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unregistered_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnregisteredUserData _$UnregisteredUserDataFromJson(Map<String, dynamic> json) {
  return UnregisteredUserData(
    name: json['name'] as String,
    age: json['age'] as int,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UnregisteredUserDataToJson(
        UnregisteredUserData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'password': instance.password,
    };
