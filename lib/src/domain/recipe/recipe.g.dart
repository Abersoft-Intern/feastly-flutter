// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      id: json['id'] as int,
      name: json['name'] as String,
      rating: json['rating'] as int,
      cookTime: json['cook_time'] as int,
      thumbnail: json['thumbnail'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      cookingMethod: json['cooking_method'] as String,
      blurhash: json['blurhash'] as String,
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'cook_time': instance.cookTime,
      'thumbnail': instance.thumbnail,
      'ingredients': instance.ingredients,
      'categories': instance.categories,
      'cooking_method': instance.cookingMethod,
      'blurhash': instance.blurhash,
    };

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      name: json['item'] as String,
      qty: json['qty'] as int,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'item': instance.name,
      'qty': instance.qty,
    };
