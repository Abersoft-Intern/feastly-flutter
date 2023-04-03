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
      imageUrl: json['image_url'] as String,
      cookTime: json['cook_time'] as int,
    );

Map<String, dynamic> _$$_RecipePreviewToJson(_$_RecipePreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'image_url': instance.imageUrl,
      'cook_time': instance.cookTime,
    };
