import 'package:feastly/src/data/discover_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_recipes_controller.g.dart';

@riverpod
class DiscoverRecipesController extends _$DiscoverRecipesController {
  @override
  FutureOr<void> build() {}

  Future<bool> likeRecipe(int recipeId) async {
    final discoverRepository = ref.watch(discoverRepositoryProvider);
    try {
      state = const AsyncLoading();
      await discoverRepository.likeRecipe(recipeId);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncError('Something wrong', StackTrace.current);
    }
    return state.hasError == false;
  }

  Future<bool> dislikeRecipe(int recipeId) async {
    final discoverRepository = ref.watch(discoverRepositoryProvider);
    try {
      state = const AsyncLoading();
      await discoverRepository.dislikeRecipe(recipeId);
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncError('Something wrong', StackTrace.current);
    }
    return state.hasError == false;
  }
}
