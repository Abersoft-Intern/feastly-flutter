import 'package:dio/dio.dart';
import 'package:feastly/src/domain/saved/saved_recipe.dart';
import 'package:feastly/src/domain/saved/user_category.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_repository.g.dart';

class SavedRepository {
  SavedRepository(this.client);

  Dio client;

  Future<List<SavedRecipe>> getSavedRecipes() async {
    final res = await client.get('/api/saved-recipes');
    return List.from(
      res.data.map(
        (i) => SavedRecipe.fromJson(i),
      ),
    );
  }

  Future<List<SavedRecipe>> getSavedRecipesByCategory(int categoryId) async {
    final res = await client.get('/api/saved-recipes/$categoryId');
    return List.from(
      res.data.map(
        (i) => SavedRecipe.fromJson(i),
      ),
    );
  }

  Future<List<UserCategory>> getCategories() async {
    final res = await client.get('/api/user-categories');
    return List.from(
      res.data.map(
        (i) => UserCategory.fromJson(i),
      ),
    );
  }

  Future<UserCategory> addCategory(String name) async {
    final res = await client.post('/api/user-categories', data: {
      'name': name,
    });
    return UserCategory.fromJson(res.data);
  }

  Future<void> addRecipeToCategory(int savedRecipeId, int categoryId) async {
    await client
        .post('/api/saved-recipes/$savedRecipeId/categories/$categoryId');
  }
}

@riverpod
SavedRepository savedRepository(SavedRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return SavedRepository(client);
}

@riverpod
Future<List<UserCategory>> userCategories(UserCategoriesRef ref) {
  SavedRepository savedRepository = ref.watch(savedRepositoryProvider);
  return savedRepository.getCategories();
}

@riverpod
Future<List<SavedRecipe>> savedRecipes(SavedRecipesRef ref) {
  SavedRepository savedRepository = ref.watch(savedRepositoryProvider);
  return savedRepository.getSavedRecipes();
}

@riverpod
Future<List<SavedRecipe>> savedRecipesByCategory(
    SavedRecipesByCategoryRef ref, int categoryId) {
  SavedRepository savedRepository = ref.watch(savedRepositoryProvider);
  return savedRepository.getSavedRecipesByCategory(categoryId);
}
