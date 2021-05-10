// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unregistered_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnregisteredTaskTearOff {
  const _$UnregisteredTaskTearOff();

  _UnregisteredTask call({required String description}) {
    return _UnregisteredTask(
      description: description,
    );
  }
}

/// @nodoc
const $UnregisteredTask = _$UnregisteredTaskTearOff();

/// @nodoc
mixin _$UnregisteredTask {
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnregisteredTaskCopyWith<UnregisteredTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnregisteredTaskCopyWith<$Res> {
  factory $UnregisteredTaskCopyWith(
          UnregisteredTask value, $Res Function(UnregisteredTask) then) =
      _$UnregisteredTaskCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$UnregisteredTaskCopyWithImpl<$Res>
    implements $UnregisteredTaskCopyWith<$Res> {
  _$UnregisteredTaskCopyWithImpl(this._value, this._then);

  final UnregisteredTask _value;
  // ignore: unused_field
  final $Res Function(UnregisteredTask) _then;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UnregisteredTaskCopyWith<$Res>
    implements $UnregisteredTaskCopyWith<$Res> {
  factory _$UnregisteredTaskCopyWith(
          _UnregisteredTask value, $Res Function(_UnregisteredTask) then) =
      __$UnregisteredTaskCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class __$UnregisteredTaskCopyWithImpl<$Res>
    extends _$UnregisteredTaskCopyWithImpl<$Res>
    implements _$UnregisteredTaskCopyWith<$Res> {
  __$UnregisteredTaskCopyWithImpl(
      _UnregisteredTask _value, $Res Function(_UnregisteredTask) _then)
      : super(_value, (v) => _then(v as _UnregisteredTask));

  @override
  _UnregisteredTask get _value => super._value as _UnregisteredTask;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_UnregisteredTask(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UnregisteredTask
    with DiagnosticableTreeMixin
    implements _UnregisteredTask {
  const _$_UnregisteredTask({required this.description});

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnregisteredTask(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnregisteredTask'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnregisteredTask &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UnregisteredTaskCopyWith<_UnregisteredTask> get copyWith =>
      __$UnregisteredTaskCopyWithImpl<_UnregisteredTask>(this, _$identity);
}

abstract class _UnregisteredTask implements UnregisteredTask {
  const factory _UnregisteredTask({required String description}) =
      _$_UnregisteredTask;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnregisteredTaskCopyWith<_UnregisteredTask> get copyWith =>
      throw _privateConstructorUsedError;
}
