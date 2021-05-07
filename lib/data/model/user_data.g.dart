// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    id: json['_id'] as String,
    name: json['name'] as String,
    age: json['age'] as int,
    email: json['email'] as String,
    password: json['password'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
