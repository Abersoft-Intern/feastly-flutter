import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/utils/push_notification_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() {}

  Future<bool> submit(String email, String password) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      final data = await authRepository.login(email: email, password: password);
      ref.read(authStateProvider.notifier).update(
          otpToken: data.otpToken,
          hasUsername: data.user.name != null,
          token: '');
      ref.read(pushNotificationPrefProvider.notifier).enable();
      state = const AsyncData(null);
      return true;
    } catch (e) {
      state = AsyncError(
        'The password or email is wrong,\nplease try again.',
        StackTrace.current,
      );
      return false;
    }
  }
}
