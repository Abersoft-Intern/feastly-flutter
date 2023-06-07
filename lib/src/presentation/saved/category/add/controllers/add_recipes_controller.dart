import 'package:feastly/src/data/saved_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_recipes_controller.g.dart';

@riverpod
class AddRecipesController extends _$AddRecipesController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(int savedRecipeId, int categoryId) async {
    final savedRepository = ref.watch(savedRepositoryProvider);

    try {
      state = const AsyncLoading();
      await savedRepository.addRecipeToCategory(savedRecipeId, categoryId);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
