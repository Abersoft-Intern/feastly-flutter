// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  bool get confirmed => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_confirmed')
  bool get emailConfirmed => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String provider,
      bool confirmed,
      bool blocked,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'email_confirmed') bool emailConfirmed,
      String? name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? emailConfirmed = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailConfirmed: null == emailConfirmed
          ? _value.emailConfirmed
          : emailConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String provider,
      bool confirmed,
      bool blocked,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'email_confirmed') bool emailConfirmed,
      String? name});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? emailConfirmed = null,
    Object? name = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailConfirmed: null == emailConfirmed
          ? _value.emailConfirmed
          : emailConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.username,
      required this.email,
      required this.provider,
      required this.confirmed,
      required this.blocked,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: 'email_confirmed') required this.emailConfirmed,
      required this.name});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String provider;
  @override
  final bool confirmed;
  @override
  final bool blocked;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'email_confirmed')
  final bool emailConfirmed;
  @override
  final String? name;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, emailConfirmed: $emailConfirmed, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.emailConfirmed, emailConfirmed) ||
                other.emailConfirmed == emailConfirmed) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, provider,
      confirmed, blocked, createdAt, updatedAt, emailConfirmed, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String username,
      required final String email,
      required final String provider,
      required final bool confirmed,
      required final bool blocked,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: 'email_confirmed') required final bool emailConfirmed,
      required final String? name}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get provider;
  @override
  bool get confirmed;
  @override
  bool get blocked;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'email_confirmed')
  bool get emailConfirmed;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserWithToken _$UserWithTokenFromJson(Map<String, dynamic> json) {
  return _UserWithToken.fromJson(json);
}

/// @nodoc
mixin _$UserWithToken {
  String get jwt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithTokenCopyWith<UserWithToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithTokenCopyWith<$Res> {
  factory $UserWithTokenCopyWith(
          UserWithToken value, $Res Function(UserWithToken) then) =
      _$UserWithTokenCopyWithImpl<$Res, UserWithToken>;
  @useResult
  $Res call({String jwt, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserWithTokenCopyWithImpl<$Res, $Val extends UserWithToken>
    implements $UserWithTokenCopyWith<$Res> {
  _$UserWithTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserWithTokenCopyWith<$Res>
    implements $UserWithTokenCopyWith<$Res> {
  factory _$$_UserWithTokenCopyWith(
          _$_UserWithToken value, $Res Function(_$_UserWithToken) then) =
      __$$_UserWithTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserWithTokenCopyWithImpl<$Res>
    extends _$UserWithTokenCopyWithImpl<$Res, _$_UserWithToken>
    implements _$$_UserWithTokenCopyWith<$Res> {
  __$$_UserWithTokenCopyWithImpl(
      _$_UserWithToken _value, $Res Function(_$_UserWithToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = null,
  }) {
    return _then(_$_UserWithToken(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWithToken implements _UserWithToken {
  const _$_UserWithToken({required this.jwt, required this.user});

  factory _$_UserWithToken.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithTokenFromJson(json);

  @override
  final String jwt;
  @override
  final User user;

  @override
  String toString() {
    return 'UserWithToken(jwt: $jwt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithToken &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWithTokenCopyWith<_$_UserWithToken> get copyWith =>
      __$$_UserWithTokenCopyWithImpl<_$_UserWithToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithTokenToJson(
      this,
    );
  }
}

abstract class _UserWithToken implements UserWithToken {
  const factory _UserWithToken(
      {required final String jwt, required final User user}) = _$_UserWithToken;

  factory _UserWithToken.fromJson(Map<String, dynamic> json) =
      _$_UserWithToken.fromJson;

  @override
  String get jwt;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithTokenCopyWith<_$_UserWithToken> get copyWith =>
      throw _privateConstructorUsedError;
}
