// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as int,
      name: json['name'] as String,
      code: json['code'] as String,
      isCreator: json['is_creator'] as bool,
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'is_creator': instance.isCreator,
      'members': instance.members,
    };

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePicture: json['profile_picture'] as String?,
      blurhash: json['blurhash'] as String?,
      isCreator: json['is_creator'] as bool,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
      'blurhash': instance.blurhash,
      'is_creator': instance.isCreator,
    };
