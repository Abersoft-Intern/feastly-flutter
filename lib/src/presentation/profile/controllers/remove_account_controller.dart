import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_account_controller.g.dart';

@riverpod
class RemoveAccountController extends _$RemoveAccountController {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      await authRepository.removeAccount();
      ref
          .read(authStateProvider.notifier)
          .update(token: null, otpToken: null, hasUsername: false);
      await ref.read(secureStorageProvider.notifier).remove('token');
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while deleting your account',
        StackTrace.current,
      );
    }
  }
}
