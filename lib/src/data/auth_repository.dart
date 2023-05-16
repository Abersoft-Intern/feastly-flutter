import 'package:dio/dio.dart';
import 'package:feastly/src/domain/user/user.dart';
import 'package:feastly/src/network/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  AuthRepository({
    required this.client,
  });

  Dio client;

  Future<UserWithToken> register({
    required String email,
    required String password,
  }) async {
    final res = await client.post('/auth/local/register', data: {
      'email': email,
      'password': password,
      'username': email,
    });

    return UserWithToken.fromJson(res.data);
  }

  Future<UserWithToken> login({
    required String email,
    required String password,
  }) async {
    final res = await client.post('/auth/local', data: {
      'identifier': email,
      'password': password,
    });

    return UserWithToken.fromJson(res.data);
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return AuthRepository(client: client);
}
