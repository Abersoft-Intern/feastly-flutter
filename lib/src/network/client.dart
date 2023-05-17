import 'package:dio/dio.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@riverpod
Dio client(ClientRef ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  final token = secureStorage.valueOrNull?['token'];
  final tempAuth = ref.watch(authStateProvider);

  return Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      headers: {'Authorization': 'Bearer ${token ?? tempAuth.token}'},
    ),
  );
}
