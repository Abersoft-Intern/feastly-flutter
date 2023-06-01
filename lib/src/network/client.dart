import 'package:dio/dio.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@Riverpod(keepAlive: true)
Dio client(ClientRef ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  final token = secureStorage.valueOrNull?['token'];
  final tempAuth = ref.watch(authStateProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      headers: {'Authorization': 'Bearer ${token ?? tempAuth.token}'},
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (e, handler) {
        if (e.response?.statusCode == 401) {
          ref.read(secureStorageProvider.notifier).remove('token');
        } else {
          handler.next(e);
        }
      },
    ),
  );

  return dio;
}
