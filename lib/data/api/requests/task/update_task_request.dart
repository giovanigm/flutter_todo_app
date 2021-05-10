import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_request.g.dart';

@JsonSerializable()
class UpdateTaskRequest {
  final String description;

  @JsonKey(name: "completed")
  final bool isCompleted;

  UpdateTaskRequest({
    required this.description,
    required this.isCompleted,
  });

  factory UpdateTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTaskRequestToJson(this);
}
