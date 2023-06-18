import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resend_otp_controller.g.dart';

@riverpod
class ResendOtpController extends _$ResendOtpController {
  @override
  FutureOr<void> build() {}

  Future<void> submit() async {
    final authRepository = ref.watch(authRepositoryProvider);
    try {
      state = const AsyncValue.loading();
      await authRepository.resendOTP(
        otpToken: ref.read(authStateProvider).otpToken,
      );
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncError(
          'An error occured while sending new otp code', StackTrace.current);
    }
  }
}
