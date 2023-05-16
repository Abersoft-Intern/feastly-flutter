import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  FutureOr<void> build() {}

  Future<bool> register(String email, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    final secureStorage = ref.read(secureStorageProvider.notifier);
    try {
      await secureStorage.remove('token');
      state = const AsyncLoading();
      final user =
          await authRepository.register(email: email, password: password);

      await secureStorage.write('token', user.jwt);
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
