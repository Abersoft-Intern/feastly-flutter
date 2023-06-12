import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/domain/user/user.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}

  Future<UserWithToken?> login(String email, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      final data = await authRepository.login(email: email, password: password);

      ref.read(authStateProvider.notifier).update(token: data.jwt);

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
