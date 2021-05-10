// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) {
  return TaskResponse(
    success: json['success'] as bool,
    task: TaskData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.task,
    };
