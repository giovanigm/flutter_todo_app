// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTaskRequest _$UpdateTaskRequestFromJson(Map<String, dynamic> json) {
  return UpdateTaskRequest(
    description: json['description'] as String,
    isCompleted: json['completed'] as bool,
  );
}

Map<String, dynamic> _$UpdateTaskRequestToJson(UpdateTaskRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'completed': instance.isCompleted,
    };
