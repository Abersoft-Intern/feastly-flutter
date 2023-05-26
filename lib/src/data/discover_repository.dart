import 'package:dio/dio.dart';
import 'package:feastly/src/domain/discover/recipe_preview.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_repository.g.dart';

class DiscoverRepository {
  DiscoverRepository(this.client);

  Dio client;

  Future<List<RecipePreview>> getDiscoverRecipes() async {
    final res = await client.get('/api/discover');
    return List.from(
      res.data.map(
        (i) => RecipePreview.fromJson(i),
      ),
    );
  }

  Future<void> likeRecipe(int id) async {
    await client.post('/api/like-recipe/$id');
  }

  Future<void> dislikeRecipe(int id) async {
    await client.post('/api/dislike-recipe/$id');
  }
}

@riverpod
DiscoverRepository discoverRepository(DiscoverRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return DiscoverRepository(client);
}

@riverpod
Future<List<RecipePreview>> discoverRecipes(DiscoverRecipesRef ref) {
  DiscoverRepository discoverRepository = ref.watch(discoverRepositoryProvider);
  return discoverRepository.getDiscoverRecipes();
}
