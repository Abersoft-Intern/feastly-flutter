import 'package:feastly/src/data/recipe_repository.dart';
import 'package:feastly/src/domain/recipe/recipe_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_controller.g.dart';

@riverpod
class RecipeController extends _$RecipeController {
  @override
  FutureOr<RecipeDetail> build() {
    return ref.read(recipeRepositoryProvider).getRecipe(1);
  }
}
