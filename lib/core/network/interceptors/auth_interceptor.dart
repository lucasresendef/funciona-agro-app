import 'dart:async';

import 'package:dio/dio.dart';
import 'package:field_management_app/core/config/app_environment.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class AuthInterceptor extends QueuedInterceptor {
  static const skipSessionClearOn401Key = 'skipSessionClearOn401';
  static const _retryOnAuthFailureKey = 'retryOnAuthFailure';

  AuthInterceptor({required SessionManager sessionManager})
    : _sessionManager = sessionManager;

  final SessionManager _sessionManager;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _sessionManager.session?.accessToken;

    appDebugLog(
      'AuthInterceptor',
      'requisicao saindo',
      data: <String, dynamic>{
        'method': options.method,
        'path': options.path,
        'hasToken': token != null && token.isNotEmpty,
        'skipSessionClearOn401':
            options.extra[skipSessionClearOn401Key] == true,
      },
    );

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      appDebugLog(
        'AuthInterceptor',
        'header Authorization adicionado',
        data: <String, dynamic>{'path': options.path},
      );
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final shouldSkipSessionClear =
        err.requestOptions.extra[skipSessionClearOn401Key] == true;

    appDebugLog(
      'AuthInterceptor',
      'erro de rede interceptado',
      data: <String, dynamic>{
        'method': err.requestOptions.method,
        'path': err.requestOptions.path,
        'statusCode': err.response?.statusCode,
        'shouldSkipSessionClear': shouldSkipSessionClear,
      },
      stackTrace: err.stackTrace,
    );

    if (err.response?.statusCode == 401 && !shouldSkipSessionClear) {
      final alreadyRetried =
          err.requestOptions.extra[_retryOnAuthFailureKey] == true;
      if (!alreadyRetried) {
        final refreshed = await _tryRefreshToken();
        if (refreshed) {
          final retry = await _retryRequest(err.requestOptions);
          if (retry != null) {
            return handler.resolve(retry);
          }
        }
      }

      appDebugLog(
        'AuthInterceptor',
        '401 recebido, limpando sessao',
        data: <String, dynamic>{'path': err.requestOptions.path},
      );
      unawaited(_sessionManager.clearSession());
    }

    handler.next(err);
  }

  Future<bool> _tryRefreshToken() async {
    final refreshToken = _sessionManager.session?.refreshToken;
    if (refreshToken == null || refreshToken.isEmpty) {
      return false;
    }

    try {
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 20),
          headers: const {
            'Accept': 'application/json',
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
      );

      final response = await dio.post<Map<String, dynamic>>(
        AppEnvironment.keycloakTokenUrl,
        data: {
          'client_id': AppEnvironment.keycloakClientId,
          'grant_type': 'refresh_token',
          'refresh_token': refreshToken,
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );

      final data = response.data ?? const <String, dynamic>{};
      final accessToken = data['access_token'] as String?;
      if (accessToken == null || accessToken.isEmpty) {
        return false;
      }

      await _sessionManager.updateTokens(
        accessToken: accessToken,
        refreshToken: data['refresh_token'] as String?,
        tokenType: data['token_type'] as String?,
        expiresIn: _toInt(data['expires_in']),
        refreshExpiresIn: _toInt(data['refresh_expires_in']),
      );
      appDebugLog('AuthInterceptor', 'refresh token concluido com sucesso');
      return true;
    } catch (error, stackTrace) {
      appDebugLog(
        'AuthInterceptor',
        'refresh token falhou',
        data: error.toString(),
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  Future<Response<dynamic>?> _retryRequest(
    RequestOptions requestOptions,
  ) async {
    final token = _sessionManager.session?.accessToken;
    if (token == null || token.isEmpty) {
      return null;
    }

    try {
      final dio = Dio(
        BaseOptions(
          baseUrl: requestOptions.baseUrl,
          connectTimeout: requestOptions.connectTimeout,
          sendTimeout: requestOptions.sendTimeout,
          receiveTimeout: requestOptions.receiveTimeout,
          responseType: requestOptions.responseType,
        ),
      );
      final headers = Map<String, dynamic>.from(requestOptions.headers);
      headers['Authorization'] = 'Bearer $token';
      final extra = Map<String, dynamic>.from(requestOptions.extra);
      extra[_retryOnAuthFailureKey] = true;

      return dio.fetch<dynamic>(
        requestOptions.copyWith(headers: headers, extra: extra),
      );
    } catch (_) {
      return null;
    }
  }

  int? _toInt(dynamic value) {
    if (value is int) {
      return value;
    }
    return int.tryParse(value?.toString() ?? '');
  }
}
