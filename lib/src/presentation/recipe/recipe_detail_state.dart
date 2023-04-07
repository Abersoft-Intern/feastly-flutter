import 'package:feastly/src/data/recipe_repository.dart';
import 'package:feastly/src/domain/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_detail_state.g.dart';

@riverpod
class RecipeDetailState extends _$RecipeDetailState {
  @override
  FutureOr<Recipe> build(int recipeId) {
    return ref.watch(recipeRepositoryProvider).getRecipe(recipeId);
  }

  void saveRecipe() {
    update((state) => state.copyWith(isSaved: true));
  }
}
