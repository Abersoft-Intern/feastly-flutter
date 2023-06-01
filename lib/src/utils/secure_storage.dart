import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

const storage = FlutterSecureStorage(
  aOptions: AndroidOptions(encryptedSharedPreferences: true),
);

@Riverpod(keepAlive: true)
class SecureStorage extends _$SecureStorage {
  @override
  Future<Map<String, String>> build() {
    return storage.readAll();
  }

  Future<String?> read(String key) async {
    return await storage.read(key: key);
  }

  Future<void> write(String key, String? value) async {
    await storage.write(key: key, value: value);
    state = AsyncData(await storage.readAll());
  }

  Future<void> remove(String key) async {
    await storage.delete(key: key);
    state = AsyncData(await storage.readAll());
  }
}
