import 'dart:io';

import 'package:dio/dio.dart';
import 'package:feastly/src/domain/user/user.dart';
import 'package:feastly/src/network/client.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as path;
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
    final res = await client.post('/api/auth/local/register', data: {
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
    final res = await client.post('/api/auth/local', data: {
      'identifier': email,
      'password': password,
    });

    return UserWithToken.fromJson(res.data);
  }

  Future<User> getProfile() async {
    final res = await client.get('/api/users/me');
    return User.fromJson(res.data);
  }

  Future<void> removeAccount() async {
    await client.delete('/api/users-permissions/users');
  }

  Future<User> updateName(String name) async {
    final user = await getProfile();
    final res = await client.put('/api/users/${user.id}', data: {
      'name': name,
    });

    return User.fromJson(res.data);
  }

  Future<void> updatePassword(String oldPassword, String newPassword) async {
    await client.put('/api/users-permissions/users/password', data: {
      'password': oldPassword,
      'newPassword': newPassword,
    });
  }

  Future<void> updateProfilePicture(File image) async {
    final user = await getProfile();
    String fileName = image.path.split('/').last;

    final data = FormData.fromMap({
      "refId": user.id,
      "ref": 'plugin::users-permissions.user',
      "field": 'profile_picture',
      "files": await MultipartFile.fromFile(
        image.path,
        filename: fileName,
        contentType: MediaType(
          'image',
          path.extension(fileName),
        ),
      ),
    });

    await client.post(
      '/api/upload',
      data: data,
      options: Options(contentType: 'multipart/form-data'),
    );
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(clientProvider);
  return AuthRepository(client: client);
}

@riverpod
FutureOr<User> profile(ProfileRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.getProfile();
}
