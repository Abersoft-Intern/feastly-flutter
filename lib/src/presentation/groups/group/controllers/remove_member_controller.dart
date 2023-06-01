import 'package:feastly/src/data/group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_member_controller.g.dart';

@riverpod
class RemoveMemberController extends _$RemoveMemberController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(int groupId, int memberId) async {
    final groupRepository = ref.watch(groupRepositoryProvider);
    try {
      state = const AsyncLoading();
      await groupRepository.removeMember(groupId, memberId);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while kicking the member',
        StackTrace.current,
      );
    }
  }
}
