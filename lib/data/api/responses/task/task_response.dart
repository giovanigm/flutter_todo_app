import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/model/task_data.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  final bool success;

  @JsonKey(name: "data")
  final TaskData task;

  TaskResponse({
    required this.success,
    required this.task,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);
}
