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

_$_UserWithToken _$$_UserWithTokenFromJson(Map<String, dynamic> json) =>
    _$_UserWithToken(
      jwt: json['jwt'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserWithTokenToJson(_$_UserWithToken instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user,
    };
