// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTasksResponse _$GetTasksResponseFromJson(Map<String, dynamic> json) {
  return GetTasksResponse(
    tasks: (json['data'] as List<dynamic>)
        .map((e) => TaskData.fromJson(e as Map<String, dynamic>))
        .toList(),
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$GetTasksResponseToJson(GetTasksResponse instance) =>
    <String, dynamic>{
      'data': instance.tasks,
      'count': instance.count,
    };
