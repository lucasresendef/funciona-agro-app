import 'dart:convert';

import 'package:field_management_app/core/storage/secure_storage_service.dart';
import 'package:field_management_app/core/utils/debug_log.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';

final sessionManagerProvider = ChangeNotifierProvider<SessionManager>((ref) {
  return SessionManager(ref.watch(secureStorageServiceProvider));
});

class SessionManager extends ChangeNotifier {
  SessionManager(this._storage);

  static const _sessionKey = 'field_management_session';
  static const _selectedFarmKey = 'field_management_selected_farm';

  final SecureStorageService _storage;

  AuthSession? _session;
  String? _selectedFarmId;
  bool _bootstrapped = false;
  Future<void>? _bootstrapFuture;

  AuthSession? get session => _session;
  String? get selectedFarmId => _selectedFarmId;
  bool get isBootstrapped => _bootstrapped;
  bool get isAuthenticated => _session?.accessToken.isNotEmpty ?? false;

  Future<void> bootstrap() {
    return _bootstrapFuture ??= _restore();
  }

  Future<void> _restore() async {
    appDebugLog('SessionManager', 'restaurando sessao do storage');
    final rawSession = await _storage.read(_sessionKey);
    final rawFarmId = await _storage.read(_selectedFarmKey);

    appDebugLog(
      'SessionManager',
      'valores lidos do storage',
      data: <String, dynamic>{
        'hasSession': rawSession?.isNotEmpty == true,
        'hasFarmId': rawFarmId?.isNotEmpty == true,
      },
    );

    if (rawSession != null && rawSession.isNotEmpty) {
      try {
        _session = AuthSession.fromJson(
          jsonDecode(rawSession) as Map<String, dynamic>,
        );
        appDebugLog(
          'SessionManager',
          'sessao restaurada do storage',
          data: <String, dynamic>{
            'hasAccessToken': _session?.accessToken.isNotEmpty == true,
          },
        );
      } catch (error, stackTrace) {
        appDebugLog(
          'SessionManager',
          'sessao local invalida, limpando storage',
          data: error.toString(),
          stackTrace: stackTrace,
        );
        await _storage.delete(_sessionKey);
        _session = null;
      }
    }

    _selectedFarmId = rawFarmId;
    _bootstrapped = true;
    appDebugLog(
      'SessionManager',
      'bootstrap local concluido',
      data: <String, dynamic>{
        'authenticated': isAuthenticated,
        'selectedFarmId': _selectedFarmId,
      },
    );
    notifyListeners();
  }

  Future<void> saveSession(AuthSession session) async {
    _session = session;
    appDebugLog(
      'SessionManager',
      'salvando sessao',
      data: <String, dynamic>{'hasAccessToken': session.accessToken.isNotEmpty},
    );
    await _storage.write(_sessionKey, jsonEncode(session.toJson()));
    appDebugLog('SessionManager', 'sessao persistida no storage');
    notifyListeners();
  }

  Future<void> updateProfile(AuthProfile profile) async {
    if (_session == null) {
      appDebugLog(
        'SessionManager',
        'updateProfile ignorado porque nao ha sessao ativa',
      );
      return;
    }

    appDebugLog('SessionManager', 'atualizando perfil');
    _session = _session!.copyWith(profile: profile);
    await _storage.write(_sessionKey, jsonEncode(_session!.toJson()));
    appDebugLog(
      'SessionManager',
      'perfil atualizado e persistido',
      data: <String, dynamic>{'profileUpdated': true},
    );
    notifyListeners();
  }

  Future<void> updateTokens({
    required String accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
    int? refreshExpiresIn,
  }) async {
    if (_session == null) {
      return;
    }

    _session = _session!.copyWith(
      accessToken: accessToken,
      refreshToken: refreshToken ?? _session!.refreshToken,
      tokenType: tokenType ?? _session!.tokenType,
      expiresIn: expiresIn ?? _session!.expiresIn,
      refreshExpiresIn: refreshExpiresIn ?? _session!.refreshExpiresIn,
    );
    await _storage.write(_sessionKey, jsonEncode(_session!.toJson()));
    notifyListeners();
  }

  Future<void> selectFarm(String? farmId) async {
    _selectedFarmId = farmId;

    if (farmId == null || farmId.isEmpty) {
      await _storage.delete(_selectedFarmKey);
    } else {
      await _storage.write(_selectedFarmKey, farmId);
    }

    notifyListeners();
  }

  Future<void> clearSession() async {
    appDebugLog(
      'SessionManager',
      'limpando sessao atual',
      data: <String, dynamic>{'hadSession': _session != null},
    );
    _session = null;
    _selectedFarmId = null;
    _bootstrapped = true;
    await _storage.delete(_sessionKey);
    await _storage.delete(_selectedFarmKey);
    appDebugLog('SessionManager', 'sessao removida do storage');
    notifyListeners();
  }
}
