import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'otp_controller.g.dart';

@riverpod
class OtpController extends _$OtpController {
  @override
  FutureOr<void> build() {}

  Future<bool> submit(String pin) async {
    state = const AsyncValue.loading();

    // Check pin
    if (pin != '4444') {
      state = AsyncError('Errrorr', StackTrace.current);
    } else {
      state = const AsyncValue.data(null);
    }

    return state.hasError == false;
  }
}
