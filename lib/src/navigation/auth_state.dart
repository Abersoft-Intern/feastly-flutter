import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  Auth build() {
    return Auth(
      token: '',
    );
  }

  void update({String? token}) {
    state = state.copyWith(
      token: token,
    );
  }

  Future<void> persistToStorage() async {
    final secureStorage = ref.read(secureStorageProvider.notifier);
    await secureStorage.write('token', state.token);
  }
}

class Auth {
  String token;

  Auth({required this.token});

  Auth copyWith({
    String? token,
  }) {
    return Auth(
      token: token ?? this.token,
    );
  }
}
