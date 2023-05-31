import 'package:feastly/src/data/group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'leave_group_controller.g.dart';

@riverpod
class LeaveGroupController extends _$LeaveGroupController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(int id) async {
    final groupRepository = ref.watch(groupRepositoryProvider);
    try {
      state = const AsyncLoading();
      await groupRepository.leaveOrDisband(id);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError('An error occured while leaving/disbanding the group',
          StackTrace.current);
    }
  }
}
