import 'package:feastly/src/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'username_controller.g.dart';

@riverpod
class UsernameController extends _$UsernameController {
  @override
  FutureOr<void> build() {}

  Future<bool> submit(String name) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      await authRepository.updateName(name);
      state = const AsyncValue.data(null);
      return true;
    } catch (e) {
      state = AsyncError('Errorrrr', StackTrace.current);
      return false;
    }
  }
}
