import 'package:dio/dio.dart';
import 'package:feastly/src/domain/group/group.dart';
import 'package:feastly/src/domain/group/group_preview.dart';
import 'package:feastly/src/domain/saved/saved_recipe.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_repository.g.dart';

class GroupRepository {
  GroupRepository({
    required this.client,
  });

  Dio client;

  Future<List<GroupPreview>> getGroupList() async {
    final res = await client.get('/api/groups');

    return List.from(
      res.data.map(
        (i) => GroupPreview.fromJson(i),
      ),
    );
  }

  Future<void> addGroup(String name) async {
    await client.post('/api/groups', data: {'name': name});
  }

  Future<Group> getGroupDetail(int id) async {
    final res = await client.get('/api/groups/$id');
    return Group.fromJson(res.data);
  }

  Future<void> joinGroup(String groupCode) async {
    await client.post('/api/groups/$groupCode/join');
  }

  Future<void> removeMember(int groupId, int memberId) async {
    await client.delete('/api/groups/$groupId/members/$memberId');
  }

  Future<void> leaveOrDisband(int id) async {
    await client.delete('/api/groups/$id');
  }

  Future<List<SavedRecipe>> getRecipes(int id) async {
    final res = await client.get('/api/groups/$id/recipes');
    await Future.delayed(const Duration(seconds: 4));
    return List.from(
      res.data.map(
        (i) => SavedRecipe.fromJson(i),
      ),
    );
  }
}

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) {
// ignore: avoid_manual_providers_as_generated_provider_dependency
  final client = ref.watch(clientProvider);
  return GroupRepository(client: client);
}

@riverpod
Future<Group> groupDetail(GroupDetailRef ref, int id) {
  final groupRepository = ref.watch(groupRepositoryProvider);
  return groupRepository.getGroupDetail(id);
}

@riverpod
Future<List<SavedRecipe>> groupRecipes(GroupRecipesRef ref, int? id) {
  final groupRepository = ref.watch(groupRepositoryProvider);
  if (id == null) {
    return Future.value([]);
  }
  return groupRepository.getRecipes(id);
}
