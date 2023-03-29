// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDetail _$$_RecipeDetailFromJson(Map<String, dynamic> json) =>
    _$_RecipeDetail(
      id: json['id'] as int,
      name: json['name'] as String,
      rating: json['rating'] as int,
      imageUrl: json['image_url'] as String,
      cookTime: json['cook_time'] as int,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      cookingMethod: json['cooking_method'] as String,
    );

Map<String, dynamic> _$$_RecipeDetailToJson(_$_RecipeDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'image_url': instance.imageUrl,
      'cook_time': instance.cookTime,
      'ingredients': instance.ingredients,
      'cooking_method': instance.cookingMethod,
    };

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      name: json['name'] as String,
      qty: json['qty'] as String,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'name': instance.name,
      'qty': instance.qty,
    };
