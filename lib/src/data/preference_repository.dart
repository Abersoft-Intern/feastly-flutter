import 'package:dio/dio.dart';
import 'package:feastly/src/domain/swiping_preference/swiping_preference.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preference_repository.g.dart';

class PreferenceRepository {
  PreferenceRepository(this.client);
  Dio client;

  Future<List<SwipingPreference>> getPreferences() async {
    final res = await client.get('/api/swipe-preference');
    return List.from(
      res.data.map(
        (i) => SwipingPreference.fromJson(i),
      ),
    );
  }

  Future<List<SwipingPreference>> changePreference(int groupId) async {
    final res = await client.patch('/api/swipe-preference/$groupId');
    return List.from(
      res.data.map(
        (i) => SwipingPreference.fromJson(i),
      ),
    );
  }
}

@riverpod
PreferenceRepository preferenceRepository(PreferenceRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return PreferenceRepository(client);
}
