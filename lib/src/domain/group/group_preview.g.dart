// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupPreview _$$_GroupPreviewFromJson(Map<String, dynamic> json) =>
    _$_GroupPreview(
      active: json['active'] as bool? ?? false,
      id: json['id'] as int,
      name: json['name'] as String,
      creatorPhoto: json['creator_photo'] as String?,
      creatorName: json['creator_name'] as String,
      blurhash: json['blurhash'] as String?,
      membersCount: json['members_count'] as int,
    );

Map<String, dynamic> _$$_GroupPreviewToJson(_$_GroupPreview instance) =>
    <String, dynamic>{
      'active': instance.active,
      'id': instance.id,
      'name': instance.name,
      'creator_photo': instance.creatorPhoto,
      'creator_name': instance.creatorName,
      'blurhash': instance.blurhash,
      'members_count': instance.membersCount,
    };
