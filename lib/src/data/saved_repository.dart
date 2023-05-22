import 'package:dio/dio.dart';
import 'package:feastly/src/domain/saved/user_category.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_repository.g.dart';

class SavedRepository {
  SavedRepository(this.client);

  Dio client;

  Future<List<UserCategory>> getCategories() async {
    final res = await client.get('/api/user-categories');
    return List<UserCategory>.from(
      res.data.map<UserCategory>(
        (dynamic i) => UserCategory.fromJson(i),
      ),
    );
  }

  Future<UserCategory> addCategory(String name) async {
    final res = await client.post('/api/user-categories', data: {
      'name': name,
    });
    return UserCategory.fromJson(res.data);
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
