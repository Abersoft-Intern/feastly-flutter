import 'package:feastly/src/domain/recipe/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String name,
    required int rating,
    @JsonKey(name: 'cook_time') required int cookTime,
    required String thumbnail,
    required List<Ingredient> ingredients,
    required List<Category> categories,
    @JsonKey(name: 'cooking_method') required String cookingMethod,
    required String blurhash,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    @JsonKey(name: 'item') required String name,
    required int qty,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, Object?> json) =>
      _$IngredientFromJson(json);
}
