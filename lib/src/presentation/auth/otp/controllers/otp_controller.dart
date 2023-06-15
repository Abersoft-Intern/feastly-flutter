import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/domain/user/user.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'otp_controller.g.dart';

@riverpod
class OtpController extends _$OtpController {
  @override
  FutureOr<void> build() {}

  Future<UserWithJwt> submit(String pin) async {
    final authRepository = ref.watch(authRepositoryProvider);
    final authState = ref.watch(authStateProvider);
    try {
      state = const AsyncValue.loading();
      final user = await authRepository.verifyOTP(
        otpToken: authState.otpToken,
        pin: pin,
      );
      ref.read(authStateProvider.notifier).update(token: user.token);
      state = const AsyncValue.data(null);
      return user;
    } catch (e) {
      state = AsyncError('Errrorr', StackTrace.current);
      rethrow;
    }
  }
}
