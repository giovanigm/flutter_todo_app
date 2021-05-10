import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entities/task.dart';

part 'task_data.g.dart';

@JsonSerializable()
@Entity(tableName: "Tasks")
class TaskData {
  @JsonKey(name: "_id")
  @primaryKey
  final String id;

  final String description;

  @JsonKey(name: "completed")
  @ColumnInfo(name: "is_completed")
  final bool isCompleted;

  TaskData({
    required this.id,
    required this.description,
    required this.isCompleted,
  });

  Task toEntity() => Task(
        id: id,
        description: description,
        isCompleted: isCompleted,
      );

  factory TaskData.fromEntity(Task entity) => TaskData(
        id: entity.id,
        description: entity.description,
        isCompleted: entity.isCompleted,
      );

  factory TaskData.fromJson(Map<String, dynamic> json) =>
      _$TaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDataToJson(this);
}
