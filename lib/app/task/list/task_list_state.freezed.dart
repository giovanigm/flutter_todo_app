// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskListStateTearOff {
  const _$TaskListStateTearOff();

  _TaskListState call(
      {required bool isLoading,
      required bool isLoggingOut,
      required bool didLogOut,
      String? errorMessage}) {
    return _TaskListState(
      isLoading: isLoading,
      isLoggingOut: isLoggingOut,
      didLogOut: didLogOut,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $TaskListState = _$TaskListStateTearOff();

/// @nodoc
mixin _$TaskListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get didLogOut => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoggingOut,
      bool didLogOut,
      String? errorMessage});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoggingOut = freezed,
    Object? didLogOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: isLoggingOut == freezed
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      didLogOut: didLogOut == freezed
          ? _value.didLogOut
          : didLogOut // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$TaskListStateCopyWith(
          _TaskListState value, $Res Function(_TaskListState) then) =
      __$TaskListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoggingOut,
      bool didLogOut,
      String? errorMessage});
}

/// @nodoc
class __$TaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res>
    implements _$TaskListStateCopyWith<$Res> {
  __$TaskListStateCopyWithImpl(
      _TaskListState _value, $Res Function(_TaskListState) _then)
      : super(_value, (v) => _then(v as _TaskListState));

  @override
  _TaskListState get _value => super._value as _TaskListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoggingOut = freezed,
    Object? didLogOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_TaskListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggingOut: isLoggingOut == freezed
          ? _value.isLoggingOut
          : isLoggingOut // ignore: cast_nullable_to_non_nullable
              as bool,
      didLogOut: didLogOut == freezed
          ? _value.didLogOut
          : didLogOut // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_TaskListState with DiagnosticableTreeMixin implements _TaskListState {
  const _$_TaskListState(
      {required this.isLoading,
      required this.isLoggingOut,
      required this.didLogOut,
      this.errorMessage});

  @override
  final bool isLoading;
  @override
  final bool isLoggingOut;
  @override
  final bool didLogOut;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListState(isLoading: $isLoading, isLoggingOut: $isLoggingOut, didLogOut: $didLogOut, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isLoggingOut', isLoggingOut))
      ..add(DiagnosticsProperty('didLogOut', didLogOut))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskListState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoggingOut, isLoggingOut) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggingOut, isLoggingOut)) &&
            (identical(other.didLogOut, didLogOut) ||
                const DeepCollectionEquality()
                    .equals(other.didLogOut, didLogOut)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoggingOut) ^
      const DeepCollectionEquality().hash(didLogOut) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$TaskListStateCopyWith<_TaskListState> get copyWith =>
      __$TaskListStateCopyWithImpl<_TaskListState>(this, _$identity);
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState(
      {required bool isLoading,
      required bool isLoggingOut,
      required bool didLogOut,
      String? errorMessage}) = _$_TaskListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoggingOut => throw _privateConstructorUsedError;
  @override
  bool get didLogOut => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskListStateCopyWith<_TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}
