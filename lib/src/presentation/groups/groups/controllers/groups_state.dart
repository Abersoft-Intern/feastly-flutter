import 'package:feastly/src/data/group_repository.dart';
import 'package:feastly/src/domain/group/group_preview.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'groups_state.g.dart';

@riverpod
class GroupsState extends _$GroupsState {
  @override
  FutureOr<List<GroupPreview>> build() async {
    final groupRepository = ref.watch(groupRepositoryProvider);
    final groups = await groupRepository.getGroupList();

    if (groups.isNotEmpty) {
      groups[0] = groups[0].copyWith(active: true);
    }

    return groups;
  }

  void changeActiveGroup(int index) {
    final tempState =
        state.value!.map((group) => group.copyWith(active: false)).toList();

    tempState[index] = tempState[index].copyWith(active: true);
    state = AsyncData(tempState);
  }

  // void changeList(List<SwipingCategory> categories) {
  //   state = AsyncData(categories);
  // }
}
