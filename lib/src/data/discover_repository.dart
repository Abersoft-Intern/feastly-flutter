import 'dart:convert';

import 'package:feastly/src/domain/discover/recipe_preview_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_repository.g.dart';

class DiscoverRepository {
  Future<RecipePreviewList> getDiscoverRecipes() async {
    await Future.delayed(const Duration(seconds: 3));
    const data =
        "{\"statusCode\":200,\"message\":\"Success\",\"result\":[{\"id\":1,\"name\":\"RaspberryPancakes\",\"rating\":4,\"image_url\":\"https://img.taste.com.au/hMaiduT5/taste/2016/11/raspberry-and-coconut-pancakes-78984-1.jpeg\",\"cook_time\":20},{\"id\":2,\"name\":\"AyamGorengMantap\",\"rating\":5,\"image_url\":\"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/11/2/0/DV1510H_fried-chicken-recipe-10_s4x3.jpg.rend.hgtvcom.406.406.suffix/1568222255998.jpeg\",\"cook_time\":20}]}";

    return Future.value(RecipePreviewList.fromJson(jsonDecode(data)));
  }
}

@riverpod
DiscoverRepository discoverRepository(DiscoverRepositoryRef ref) {
  return DiscoverRepository();
}

@riverpod
Future<RecipePreviewList> discoverRecipes(DiscoverRecipesRef ref) {
  DiscoverRepository discoverRepository = ref.watch(discoverRepositoryProvider);
  return discoverRepository.getDiscoverRecipes();
}
