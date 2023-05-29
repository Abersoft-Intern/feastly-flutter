import 'package:feastly/src/data/saved_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_recipe_controller.g.dart';

@riverpod
class DeleteRecipeController extends _$DeleteRecipeController {
  @override
  FutureOr<void> build() {}

  Future<void> delete(int id) async {
    final savedRepository = ref.watch(savedRepositoryProvider);
    try {
      state = const AsyncLoading();
      await savedRepository.deleteRecipe(id);
      ref.invalidate(savedRecipesProvider);
      state = const AsyncData(null);
    } catch (e) {
      debugPrint(e.toString());
      state = AsyncError(
        'There\'s something wrong while removing recipe',
        StackTrace.current,
      );
    }
  }
}
