import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  Auth build() {
    return Auth(token: '', otpToken: '');
  }

  void update({String? token, String? otpToken, bool? hasUsername}) {
    state = state.copyWith(
      token: token,
      otpToken: otpToken,
      hasUsername: hasUsername,
    );
  }

  Future<void> persistToStorage() async {
    await storage.write(key: 'token', value: state.token);
  }
}

class Auth {
  String token;
  String otpToken;
  bool hasUsername;

  Auth({
    required this.token,
    required this.otpToken,
    this.hasUsername = false,
  });

  Auth copyWith({
    String? token,
    String? otpToken,
    bool? hasUsername,
  }) {
    return Auth(
      token: token ?? this.token,
      otpToken: otpToken ?? this.otpToken,
      hasUsername: hasUsername ?? this.hasUsername,
    );
  }
}
