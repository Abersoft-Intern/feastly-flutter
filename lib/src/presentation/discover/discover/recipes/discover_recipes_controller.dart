import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_recipes_controller.g.dart';

@riverpod
class DiscoverRecipesController extends _$DiscoverRecipesController {
  @override
  FutureOr<void> build() {}

  Future<bool> likeRecipe(int recipeId) async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 2));
    state = const AsyncValue.data(null);
    return state.hasError == false;
  }

  Future<bool> skipRecipe(int recipeId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = AsyncValue.error('Somethin wrong la', StackTrace.current);
    return state.hasError == false;
  }
}
