import 'package:feastly/src/domain/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'recipe_detail_controller.g.dart';

@riverpod
class RecipeDetailController extends _$RecipeDetailController {
  @override
  FutureOr<void> build() {}

  Future<void> saveRecipe(int recipeId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 1));
    state = const AsyncValue.data(null);
  }

  Future<void> shareRecipe(Recipe recipe) {
    return Share.share('Join me on feastly');
  }
}
