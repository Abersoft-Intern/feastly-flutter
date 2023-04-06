import 'package:feastly/src/data/recipe_repository.dart';
import 'package:feastly/src/domain/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_controller.g.dart';

@riverpod
class RecipeController extends _$RecipeController {
  @override
  FutureOr<Recipe> build(int recipeId) {
    return ref.read(recipeRepositoryProvider).getRecipe(recipeId);
  }
}
