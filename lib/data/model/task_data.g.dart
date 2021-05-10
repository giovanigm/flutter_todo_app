// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskData _$TaskDataFromJson(Map<String, dynamic> json) {
  return TaskData(
    id: json['_id'] as String,
    description: json['description'] as String,
    isCompleted: json['completed'] as bool,
  );
}

Map<String, dynamic> _$TaskDataToJson(TaskData instance) => <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'completed': instance.isCompleted,
    };
