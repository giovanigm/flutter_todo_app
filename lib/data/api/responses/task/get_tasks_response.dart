import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/data/model/task_data.dart';

part 'get_tasks_response.g.dart';

@JsonSerializable()
class GetTasksResponse {
  @JsonKey(name: "data")
  final List<TaskData> tasks;

  final int count;

  GetTasksResponse({
    required this.tasks,
    required this.count,
  });

  factory GetTasksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTasksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetTasksResponseToJson(this);
}
