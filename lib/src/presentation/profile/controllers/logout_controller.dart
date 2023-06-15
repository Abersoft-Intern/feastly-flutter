import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_controller.g.dart';

@riverpod
class LogoutController extends _$LogoutController {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    try {
      state = const AsyncLoading();
      ref
          .read(authStateProvider.notifier)
          .update(token: null, otpToken: null, hasUsername: false);
      await ref.read(secureStorageProvider.notifier).remove('token');
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while logging you out',
        StackTrace.current,
      );
    }
  }
}
