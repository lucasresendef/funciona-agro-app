import 'dart:convert';

import 'package:field_management_app/core/storage/secure_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rememberMeServiceProvider = Provider<RememberMeService>((ref) {
  return RememberMeService(ref.watch(secureStorageServiceProvider));
});

class RememberMeService {
  const RememberMeService(this._storage);

  static const _credentialsKey = 'field_management_login_credentials';

  final SecureStorageService _storage;

  Future<void> saveCredentials({
    required String username,
    required String password,
  }) async {
    final data = <String, String>{'username': username, 'password': password};
    await _storage.write(_credentialsKey, jsonEncode(data));
  }

  Future<LoginRememberedCredentials?> readCredentials() async {
    final raw = await _storage.read(_credentialsKey);
    if (raw == null || raw.isEmpty) {
      return null;
    }

    final json = jsonDecode(raw) as Map<String, dynamic>;
    final username = (json['username'] as String?)?.trim() ?? '';
    final password = (json['password'] as String?) ?? '';

    if (username.isEmpty || password.isEmpty) {
      return null;
    }

    return LoginRememberedCredentials(username: username, password: password);
  }

  Future<void> clearCredentials() => _storage.delete(_credentialsKey);
}

class LoginRememberedCredentials {
  const LoginRememberedCredentials({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}
