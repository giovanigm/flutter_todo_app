import 'package:floor/floor.dart';

abstract class BaseDao<T> {
  @insert
  Future<void> insertOne(T item);

  @insert
  Future<void> insertMany(List<T> items);

  @update
  Future<void> updateOne(T item);

  @update
  Future<void> updateMany(List<T> items);

  @delete
  Future<void> deleteOne(T item);

  @delete
  Future<void> deleteMany(List<T> items);
}
