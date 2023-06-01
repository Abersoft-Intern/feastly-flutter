import 'package:feastly/src/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_name_controller.g.dart';

@riverpod
class ChangeNameController extends _$ChangeNameController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String name) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      await authRepository.updateName(name);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while changing your name',
        StackTrace.current,
      );
    }
  }
}
