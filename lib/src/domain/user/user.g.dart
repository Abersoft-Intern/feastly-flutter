// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      email: json['email'] as String,
      confirmed: json['confirmed'] as bool,
      name: json['name'] as String?,
      profilePicture: json['profile_picture'] as String?,
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'confirmed': instance.confirmed,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
      'blurhash': instance.blurhash,
    };

_$_UserWithOtpToken _$$_UserWithOtpTokenFromJson(Map<String, dynamic> json) =>
    _$_UserWithOtpToken(
      otpToken: json['otp_token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserWithOtpTokenToJson(_$_UserWithOtpToken instance) =>
    <String, dynamic>{
      'otp_token': instance.otpToken,
      'user': instance.user,
    };

_$_UserWithJwt _$$_UserWithJwtFromJson(Map<String, dynamic> json) =>
    _$_UserWithJwt(
      token: json['jwt'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserWithJwtToJson(_$_UserWithJwt instance) =>
    <String, dynamic>{
      'jwt': instance.token,
      'user': instance.user,
    };
