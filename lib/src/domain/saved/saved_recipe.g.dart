// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedRecipe _$$_SavedRecipeFromJson(Map<String, dynamic> json) =>
    _$_SavedRecipe(
      id: json['id'] as int,
      recipeId: json['recipe_id'] as int,
      name: json['name'] as String,
      rating: json['rating'] as int,
      thumbnail: json['thumbnail'] as String,
      cookTime: json['cook_time'] as int,
      blurhash: json['blurhash'] as String,
    );

Map<String, dynamic> _$$_SavedRecipeToJson(_$_SavedRecipe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipeId,
      'name': instance.name,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'cook_time': instance.cookTime,
      'blurhash': instance.blurhash,
    };
