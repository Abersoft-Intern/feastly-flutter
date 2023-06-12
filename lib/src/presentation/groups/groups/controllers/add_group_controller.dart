import 'package:feastly/src/data/group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_group_controller.g.dart';

@riverpod
class AddGroupController extends _$AddGroupController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String name) async {
    final groupRepository = ref.watch(groupRepositoryProvider);
    try {
      state = const AsyncLoading();
      await groupRepository.addGroup(name);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
          'An error occured while creating the group', StackTrace.current);
    }
  }
}
