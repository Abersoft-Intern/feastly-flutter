import 'package:dio/dio.dart';
import 'package:feastly/src/utils/secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@riverpod
Dio client(ClientRef ref) {
  const baseUrl = 'localhost';
  final secureStorage = ref.watch(secureStorageProvider);
  final token = secureStorage.valueOrNull?['token'];

  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {'Authorization': 'Bearer ${token ?? ''}'},
    ),
  );
}
