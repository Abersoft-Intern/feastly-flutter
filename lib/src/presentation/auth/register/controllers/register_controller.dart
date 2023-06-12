import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  FutureOr<void> build() {}

  Future<bool> register(String email, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      final data =
          await authRepository.register(email: email, password: password);

      ref.read(authStateProvider.notifier).update(token: data.jwt);
      state = const AsyncData(null);
      return true;
    } catch (e) {
      state = AsyncError(
        'Ops, something went wrong, try again.',
        StackTrace.current,
      );
      return false;
    }
  }
}
