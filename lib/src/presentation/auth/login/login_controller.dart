import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/domain/user/user.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}

  Future<UserWithToken?> login(String email, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    final secureStorage = ref.read(secureStorageProvider.notifier);
    try {
      await secureStorage.remove('token');
      state = const AsyncLoading();
      final data = await authRepository.login(email: email, password: password);

      await secureStorage.write('token', data.jwt);
      await secureStorage.write('name', data.user.name);
      await secureStorage.write(
          'confirmed', data.user.emailConfirmed.toString());
      state = const AsyncData(null);
      return data;
    } catch (e) {
      state = AsyncError(
        'The password or email is wrong,\nplease try again.',
        StackTrace.current,
      );
      return null;
    }
  }
}
