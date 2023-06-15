import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'username_controller.g.dart';

@riverpod
class UsernameController extends _$UsernameController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String name) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      await authRepository.updateName(name);
      await ref.read(authStateProvider.notifier).persistToStorage();
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncError(
          'An error occured while submiting your name', StackTrace.current);
    }
  }
}
