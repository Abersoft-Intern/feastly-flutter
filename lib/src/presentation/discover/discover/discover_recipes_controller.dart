import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_recipes_controller.g.dart';

@riverpod
class DiscoverRecipesController extends _$DiscoverRecipesController {
  @override
  FutureOr<void> build() {}

  bool likeRecipe(int recipeId) {
    state = const AsyncValue.loading();
    Future.delayed(const Duration(seconds: 2));
    state = const AsyncValue.data(null);

    return Random().nextBool();
  }
}
