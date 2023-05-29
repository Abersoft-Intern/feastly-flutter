import 'package:dio/dio.dart';
import 'package:feastly/src/domain/recipe/recipe.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_repository.g.dart';

class RecipeRepository {
  RecipeRepository(this.client);

  Dio client;

  Future<Recipe> getRecipeDetail(int id) async {
    final res = await client.get('/api/recipes/$id');
    return Recipe.fromJson(res.data);
  }
}

@riverpod
RecipeRepository recipeRepository(RecipeRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return RecipeRepository(client);
}
