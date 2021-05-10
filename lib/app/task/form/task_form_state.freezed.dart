// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskFormStateTearOff {
  const _$TaskFormStateTearOff();

  _TaskFormState call(
      {required String description,
      Task? taskToUpdate,
      required bool isSubmitting,
      required bool didSubmit,
      String? errorMessage}) {
    return _TaskFormState(
      description: description,
      taskToUpdate: taskToUpdate,
      isSubmitting: isSubmitting,
      didSubmit: didSubmit,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $TaskFormState = _$TaskFormStateTearOff();

/// @nodoc
mixin _$TaskFormState {
  String get description => throw _privateConstructorUsedError;
  Task? get taskToUpdate => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get didSubmit => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call(
      {String description,
      Task? taskToUpdate,
      bool isSubmitting,
      bool didSubmit,
      String? errorMessage});

  $TaskCopyWith<$Res>? get taskToUpdate;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? taskToUpdate = freezed,
    Object? isSubmitting = freezed,
    Object? didSubmit = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskToUpdate: taskToUpdate == freezed
          ? _value.taskToUpdate
          : taskToUpdate // ignore: cast_nullable_to_non_nullable
              as Task?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      didSubmit: didSubmit == freezed
          ? _value.didSubmit
          : didSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TaskCopyWith<$Res>? get taskToUpdate {
    if (_value.taskToUpdate == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.taskToUpdate!, (value) {
      return _then(_value.copyWith(taskToUpdate: value));
    });
  }
}

/// @nodoc
abstract class _$TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$TaskFormStateCopyWith(
          _TaskFormState value, $Res Function(_TaskFormState) then) =
      __$TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      Task? taskToUpdate,
      bool isSubmitting,
      bool didSubmit,
      String? errorMessage});

  @override
  $TaskCopyWith<$Res>? get taskToUpdate;
}

/// @nodoc
class __$TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$TaskFormStateCopyWith<$Res> {
  __$TaskFormStateCopyWithImpl(
      _TaskFormState _value, $Res Function(_TaskFormState) _then)
      : super(_value, (v) => _then(v as _TaskFormState));

  @override
  _TaskFormState get _value => super._value as _TaskFormState;

  @override
  $Res call({
    Object? description = freezed,
    Object? taskToUpdate = freezed,
    Object? isSubmitting = freezed,
    Object? didSubmit = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_TaskFormState(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskToUpdate: taskToUpdate == freezed
          ? _value.taskToUpdate
          : taskToUpdate // ignore: cast_nullable_to_non_nullable
              as Task?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      didSubmit: didSubmit == freezed
          ? _value.didSubmit
          : didSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_TaskFormState extends _TaskFormState with DiagnosticableTreeMixin {
  const _$_TaskFormState(
      {required this.description,
      this.taskToUpdate,
      required this.isSubmitting,
      required this.didSubmit,
      this.errorMessage})
      : super._();

  @override
  final String description;
  @override
  final Task? taskToUpdate;
  @override
  final bool isSubmitting;
  @override
  final bool didSubmit;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskFormState(description: $description, taskToUpdate: $taskToUpdate, isSubmitting: $isSubmitting, didSubmit: $didSubmit, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskFormState'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('taskToUpdate', taskToUpdate))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('didSubmit', didSubmit))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskFormState &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.taskToUpdate, taskToUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.taskToUpdate, taskToUpdate)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.didSubmit, didSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.didSubmit, didSubmit)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(taskToUpdate) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(didSubmit) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      __$TaskFormStateCopyWithImpl<_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState extends TaskFormState {
  const factory _TaskFormState(
      {required String description,
      Task? taskToUpdate,
      required bool isSubmitting,
      required bool didSubmit,
      String? errorMessage}) = _$_TaskFormState;
  const _TaskFormState._() : super._();

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  Task? get taskToUpdate => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get didSubmit => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
