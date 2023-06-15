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
  String get email => throw _privateConstructorUsedError;
  bool get confirmed => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;

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
      String email,
      bool confirmed,
      String? name,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String? blurhash});
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
    Object? email = null,
    Object? confirmed = null,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
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
      String email,
      bool confirmed,
      String? name,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String? blurhash});
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
    Object? email = null,
    Object? confirmed = null,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.email,
      required this.confirmed,
      required this.name,
      @JsonKey(name: 'profile_picture') required this.profilePicture,
      required this.blurhash});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final bool confirmed;
  @override
  final String? name;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  final String? blurhash;

  @override
  String toString() {
    return 'User(id: $id, email: $email, confirmed: $confirmed, name: $name, profilePicture: $profilePicture, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, confirmed, name, profilePicture, blurhash);

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
      required final String email,
      required final bool confirmed,
      required final String? name,
      @JsonKey(name: 'profile_picture') required final String? profilePicture,
      required final String? blurhash}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  bool get confirmed;
  @override
  String? get name;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  String? get blurhash;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserWithOtpToken _$UserWithOtpTokenFromJson(Map<String, dynamic> json) {
  return _UserWithOtpToken.fromJson(json);
}

/// @nodoc
mixin _$UserWithOtpToken {
  @JsonKey(name: 'otp_token')
  String get otpToken => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithOtpTokenCopyWith<UserWithOtpToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithOtpTokenCopyWith<$Res> {
  factory $UserWithOtpTokenCopyWith(
          UserWithOtpToken value, $Res Function(UserWithOtpToken) then) =
      _$UserWithOtpTokenCopyWithImpl<$Res, UserWithOtpToken>;
  @useResult
  $Res call({@JsonKey(name: 'otp_token') String otpToken, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserWithOtpTokenCopyWithImpl<$Res, $Val extends UserWithOtpToken>
    implements $UserWithOtpTokenCopyWith<$Res> {
  _$UserWithOtpTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpToken = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      otpToken: null == otpToken
          ? _value.otpToken
          : otpToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserWithOtpTokenCopyWith<$Res>
    implements $UserWithOtpTokenCopyWith<$Res> {
  factory _$$_UserWithOtpTokenCopyWith(
          _$_UserWithOtpToken value, $Res Function(_$_UserWithOtpToken) then) =
      __$$_UserWithOtpTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'otp_token') String otpToken, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserWithOtpTokenCopyWithImpl<$Res>
    extends _$UserWithOtpTokenCopyWithImpl<$Res, _$_UserWithOtpToken>
    implements _$$_UserWithOtpTokenCopyWith<$Res> {
  __$$_UserWithOtpTokenCopyWithImpl(
      _$_UserWithOtpToken _value, $Res Function(_$_UserWithOtpToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpToken = null,
    Object? user = null,
  }) {
    return _then(_$_UserWithOtpToken(
      otpToken: null == otpToken
          ? _value.otpToken
          : otpToken // ignore: cast_nullable_to_non_nullable
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
class _$_UserWithOtpToken implements _UserWithOtpToken {
  const _$_UserWithOtpToken(
      {@JsonKey(name: 'otp_token') required this.otpToken, required this.user});

  factory _$_UserWithOtpToken.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithOtpTokenFromJson(json);

  @override
  @JsonKey(name: 'otp_token')
  final String otpToken;
  @override
  final User user;

  @override
  String toString() {
    return 'UserWithOtpToken(otpToken: $otpToken, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithOtpToken &&
            (identical(other.otpToken, otpToken) ||
                other.otpToken == otpToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otpToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWithOtpTokenCopyWith<_$_UserWithOtpToken> get copyWith =>
      __$$_UserWithOtpTokenCopyWithImpl<_$_UserWithOtpToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithOtpTokenToJson(
      this,
    );
  }
}

abstract class _UserWithOtpToken implements UserWithOtpToken {
  const factory _UserWithOtpToken(
      {@JsonKey(name: 'otp_token') required final String otpToken,
      required final User user}) = _$_UserWithOtpToken;

  factory _UserWithOtpToken.fromJson(Map<String, dynamic> json) =
      _$_UserWithOtpToken.fromJson;

  @override
  @JsonKey(name: 'otp_token')
  String get otpToken;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithOtpTokenCopyWith<_$_UserWithOtpToken> get copyWith =>
      throw _privateConstructorUsedError;
}

UserWithJwt _$UserWithJwtFromJson(Map<String, dynamic> json) {
  return _UserWithJwt.fromJson(json);
}

/// @nodoc
mixin _$UserWithJwt {
  @JsonKey(name: 'jwt')
  String get token => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWithJwtCopyWith<UserWithJwt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithJwtCopyWith<$Res> {
  factory $UserWithJwtCopyWith(
          UserWithJwt value, $Res Function(UserWithJwt) then) =
      _$UserWithJwtCopyWithImpl<$Res, UserWithJwt>;
  @useResult
  $Res call({@JsonKey(name: 'jwt') String token, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserWithJwtCopyWithImpl<$Res, $Val extends UserWithJwt>
    implements $UserWithJwtCopyWith<$Res> {
  _$UserWithJwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserWithJwtCopyWith<$Res>
    implements $UserWithJwtCopyWith<$Res> {
  factory _$$_UserWithJwtCopyWith(
          _$_UserWithJwt value, $Res Function(_$_UserWithJwt) then) =
      __$$_UserWithJwtCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'jwt') String token, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserWithJwtCopyWithImpl<$Res>
    extends _$UserWithJwtCopyWithImpl<$Res, _$_UserWithJwt>
    implements _$$_UserWithJwtCopyWith<$Res> {
  __$$_UserWithJwtCopyWithImpl(
      _$_UserWithJwt _value, $Res Function(_$_UserWithJwt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$_UserWithJwt(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
class _$_UserWithJwt implements _UserWithJwt {
  const _$_UserWithJwt(
      {@JsonKey(name: 'jwt') required this.token, required this.user});

  factory _$_UserWithJwt.fromJson(Map<String, dynamic> json) =>
      _$$_UserWithJwtFromJson(json);

  @override
  @JsonKey(name: 'jwt')
  final String token;
  @override
  final User user;

  @override
  String toString() {
    return 'UserWithJwt(token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWithJwt &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserWithJwtCopyWith<_$_UserWithJwt> get copyWith =>
      __$$_UserWithJwtCopyWithImpl<_$_UserWithJwt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWithJwtToJson(
      this,
    );
  }
}

abstract class _UserWithJwt implements UserWithJwt {
  const factory _UserWithJwt(
      {@JsonKey(name: 'jwt') required final String token,
      required final User user}) = _$_UserWithJwt;

  factory _UserWithJwt.fromJson(Map<String, dynamic> json) =
      _$_UserWithJwt.fromJson;

  @override
  @JsonKey(name: 'jwt')
  String get token;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserWithJwtCopyWith<_$_UserWithJwt> get copyWith =>
      throw _privateConstructorUsedError;
}
