// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required User? user,
      required bool isLoggingOut,
      required bool didLogOut,
      String? errorMessage}) {
    return _AuthState(
      user: user,
      isLoggingOut: isLoggingOut,
      didLogOut: didLogOut,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get didLogOut => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {User? user, bool isLoggingOut, bool didLogOut, String? errorMessage});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoggingOut = freezed,
    Object? didLogOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? user, bool isLoggingOut, bool didLogOut, String? errorMessage});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoggingOut = freezed,
    Object? didLogOut = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {required this.user,
      required this.isLoggingOut,
      required this.didLogOut,
      this.errorMessage});

  @override
  final User? user;
  @override
  final bool isLoggingOut;
  @override
  final bool didLogOut;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(user: $user, isLoggingOut: $isLoggingOut, didLogOut: $didLogOut, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('isLoggingOut', isLoggingOut))
      ..add(DiagnosticsProperty('didLogOut', didLogOut))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
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
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isLoggingOut) ^
      const DeepCollectionEquality().hash(didLogOut) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required User? user,
      required bool isLoggingOut,
      required bool didLogOut,
      String? errorMessage}) = _$_AuthState;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool get isLoggingOut => throw _privateConstructorUsedError;
  @override
  bool get didLogOut => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
