import 'package:feastly/src/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_controller.g.dart';

@riverpod
class ChangePasswordController extends _$ChangePasswordController {
  @override
  FutureOr<void> build() {}

  Future<void> submit(String oldPassword, String newPassword) async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncLoading();
      await authRepository.updatePassword(oldPassword, newPassword);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while changing your password',
        StackTrace.current,
      );
    }
  }
}
