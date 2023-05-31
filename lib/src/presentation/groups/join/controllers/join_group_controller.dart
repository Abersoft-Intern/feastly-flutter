import 'package:feastly/src/data/group_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'join_group_controller.g.dart';

@riverpod
class JoinGroupController extends _$JoinGroupController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String code) async {
    final groupRepository = ref.watch(groupRepositoryProvider);
    try {
      state = const AsyncLoading();
      await groupRepository.joinGroup(code);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
          'An error occured while joining the group', StackTrace.current);
    }
  }
}
