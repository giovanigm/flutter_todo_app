import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entities/unregistered_task.dart';

part 'unregistered_task_data.g.dart';

@JsonSerializable()
class UnregisteredTaskData {
  final String description;

  UnregisteredTaskData({
    required this.description,
  });

  UnregisteredTask toEntity() => UnregisteredTask(
        description: description,
      );

  factory UnregisteredTaskData.fromEntity(UnregisteredTask entity) =>
      UnregisteredTaskData(
        description: entity.description,
      );

  factory UnregisteredTaskData.fromJson(Map<String, dynamic> json) =>
      _$UnregisteredTaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$UnregisteredTaskDataToJson(this);
}
