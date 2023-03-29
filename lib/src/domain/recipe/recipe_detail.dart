import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'recipe_detail.g.dart';

@freezed
class RecipeDetail with _$RecipeDetail {
  const factory RecipeDetail({
    required int id,
    required String name,
    required int rating,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'cook_time') required int cookTime,
    required List<Ingredient> ingredients,
    @JsonKey(name: 'cooking_method') required String cookingMethod,
  }) = _RecipeDetail;

  factory RecipeDetail.fromJson(Map<String, Object?> json) =>
      _$RecipeDetailFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String name,
    required String qty,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, Object?> json) =>
      _$IngredientFromJson(json);
}
