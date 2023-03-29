import 'dart:convert';

import 'package:feastly/src/domain/recipe/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_repository.g.dart';

class RecipeRepository {
  Future<Recipe> getRecipe(int id) async {
    await Future.delayed(const Duration(seconds: 3));
    const data =
        "{\"statusCode\":200,\"message\":\"Success\",\"result\":{\"id\":1,\"name\":\"RaspberryPancakes\",\"rating\":4,\"image_url\":\"https://img.taste.com.au/hMaiduT5/taste/2016/11/raspberry-and-coconut-pancakes-78984-1.jpeg\",\"cook_time\":20,\"ingredients\":[{\"name\":\"dlMilk\",\"qty\":\"6\"},{\"name\":\"Eggs\",\"qty\":\"3\"},{\"name\":\"dlWheatflour\",\"qty\":\"2\"},{\"name\":\"pinchofsalt\",\"qty\":\"1\"},{\"name\":\"tbspofButter\",\"qty\":\"2\"}],\"cooking_method\":\"1.Putflourandsaltinabigbowl.Pourdownhalfthemilkasyoustirit,addtherestofthemilkuntilthereisnolumpsleftinit.\\n\\n2.Meltthebutterinapanandthenpouritdownthemix.\\n\\n3.Fryatmediumtemperatureuntillthepancakeisgoldenbrown.\\n\\n4.Flipthepancakeandfrytheotherside.\"},\"url\":\"https://google.com\"}";

    return Future.value(Recipe.fromJson(jsonDecode(data)['result']));
  }
}

@riverpod
RecipeRepository recipeRepository(RecipeRepositoryRef ref) {
  return RecipeRepository();
}
