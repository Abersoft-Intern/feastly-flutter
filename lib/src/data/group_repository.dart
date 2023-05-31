import 'package:dio/dio.dart';
import 'package:feastly/src/domain/group/group.dart';
import 'package:feastly/src/domain/group/group_preview.dart';
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

  Future<void> leaveOrDisband(int id) async {
    await client.delete('/api/groups/$id');
  }
}

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return GroupRepository(client: client);
}

@riverpod
Future<Group> groupDetail(GroupDetailRef ref, int id) {
  final groupRepository = ref.watch(groupRepositoryProvider);
  return groupRepository.getGroupDetail(id);
}
