import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipe.freezed.dart';
part 'saved_recipe.g.dart';

@freezed
class SavedRecipe with _$SavedRecipe {
  const factory SavedRecipe({
    required int id,
    @JsonKey(name: 'recipe_id') required int recipeId,
    required String name,
    required int rating,
    required String thumbnail,
    @JsonKey(name: 'cook_time') required int cookTime,
    required String blurhash,
  }) = _SavedRecipe;

  factory SavedRecipe.fromJson(Map<String, Object?> json) =>
      _$SavedRecipeFromJson(json);
}
