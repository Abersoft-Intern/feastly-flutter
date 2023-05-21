// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipePreview _$$_RecipePreviewFromJson(Map<String, dynamic> json) =>
    _$_RecipePreview(
      id: json['id'] as int,
      name: json['name'] as String,
      rating: json['rating'] as int,
      thumbnail: json['thumbnail'] as String,
      cookTime: json['cook_time'] as int,
      blurhash: json['blurhash'] as String,
    );

Map<String, dynamic> _$$_RecipePreviewToJson(_$_RecipePreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'cook_time': instance.cookTime,
      'blurhash': instance.blurhash,
    };
