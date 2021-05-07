// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unregistered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnregisteredUserTearOff {
  const _$UnregisteredUserTearOff();

  _UnregisteredUser call(
      {required String name,
      required int age,
      required String email,
      required String password}) {
    return _UnregisteredUser(
      name: name,
      age: age,
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $UnregisteredUser = _$UnregisteredUserTearOff();

/// @nodoc
mixin _$UnregisteredUser {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnregisteredUserCopyWith<UnregisteredUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnregisteredUserCopyWith<$Res> {
  factory $UnregisteredUserCopyWith(
          UnregisteredUser value, $Res Function(UnregisteredUser) then) =
      _$UnregisteredUserCopyWithImpl<$Res>;
  $Res call({String name, int age, String email, String password});
}

/// @nodoc
class _$UnregisteredUserCopyWithImpl<$Res>
    implements $UnregisteredUserCopyWith<$Res> {
  _$UnregisteredUserCopyWithImpl(this._value, this._then);

  final UnregisteredUser _value;
  // ignore: unused_field
  final $Res Function(UnregisteredUser) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UnregisteredUserCopyWith<$Res>
    implements $UnregisteredUserCopyWith<$Res> {
  factory _$UnregisteredUserCopyWith(
          _UnregisteredUser value, $Res Function(_UnregisteredUser) then) =
      __$UnregisteredUserCopyWithImpl<$Res>;
  @override
  $Res call({String name, int age, String email, String password});
}

/// @nodoc
class __$UnregisteredUserCopyWithImpl<$Res>
    extends _$UnregisteredUserCopyWithImpl<$Res>
    implements _$UnregisteredUserCopyWith<$Res> {
  __$UnregisteredUserCopyWithImpl(
      _UnregisteredUser _value, $Res Function(_UnregisteredUser) _then)
      : super(_value, (v) => _then(v as _UnregisteredUser));

  @override
  _UnregisteredUser get _value => super._value as _UnregisteredUser;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_UnregisteredUser(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UnregisteredUser
    with DiagnosticableTreeMixin
    implements _UnregisteredUser {
  const _$_UnregisteredUser(
      {required this.name,
      required this.age,
      required this.email,
      required this.password});

  @override
  final String name;
  @override
  final int age;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnregisteredUser(name: $name, age: $age, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnregisteredUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnregisteredUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$UnregisteredUserCopyWith<_UnregisteredUser> get copyWith =>
      __$UnregisteredUserCopyWithImpl<_UnregisteredUser>(this, _$identity);
}

abstract class _UnregisteredUser implements UnregisteredUser {
  const factory _UnregisteredUser(
      {required String name,
      required int age,
      required String email,
      required String password}) = _$_UnregisteredUser;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnregisteredUserCopyWith<_UnregisteredUser> get copyWith =>
      throw _privateConstructorUsedError;
}
