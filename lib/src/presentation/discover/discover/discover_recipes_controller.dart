import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_recipes_controller.g.dart';

@riverpod
class DiscoverRecipesController extends _$DiscoverRecipesController {
  @override
  FutureOr<void> build() {}

  Future<void> likeRecipe(int recipeId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));

    if (Random().nextBool()) {
      state = const AsyncValue.data(null);
    } else {
      state = AsyncValue.error('Somethin wrong la', StackTrace.current);
    }
  }

  Future<void> skipRecipe(int recipeId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));

    if (Random().nextBool()) {
      state = const AsyncValue.data(null);
    } else {
      state = AsyncValue.error('Somethin wrong la', StackTrace.current);
    }
  }
}
