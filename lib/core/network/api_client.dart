import 'package:dio/dio.dart';
import 'package:field_management_app/core/config/app_environment.dart';
import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/core/network/interceptors/auth_interceptor.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/map_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiDioProvider = Provider<Dio>((ref) {
  final sessionManager = ref.watch(sessionManagerProvider);

  return Dio(
    BaseOptions(
      baseUrl: AppEnvironment.apiBaseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 20),
      headers: const {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  )..interceptors.add(AuthInterceptor(sessionManager: sessionManager));
});

final keycloakDioProvider = Provider<Dio>((ref) {
  return Dio(
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
});

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    ref.watch(apiDioProvider),
    ref.watch(sessionManagerProvider),
  );
});

class ApiClient {
  const ApiClient(this._dio, this._sessionManager);

  final Dio _dio;
  final SessionManager _sessionManager;

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        path,
        queryParameters: queryParameters?.compact(),
        options: options,
      );
      return _unwrap(response.data);
    } on DioException catch (error) {
      throw AppException.fromDio(error);
    }
  }

  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<dynamic>(
        path,
        data: _sanitizeWritePayload(
          _shouldAttachAuditFields(path, options)
              ? _withAuditFields(data, method: 'post')
              : data,
        ),
        queryParameters: queryParameters?.compact(),
        options: options,
      );
      return _unwrap(response.data);
    } on DioException catch (error) {
      throw AppException.fromDio(error);
    }
  }

  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put<dynamic>(
        path,
        data: _sanitizeWritePayload(
          _shouldAttachAuditFields(path, options)
              ? _withAuditFields(data, method: 'put')
              : data,
        ),
        queryParameters: queryParameters?.compact(),
        options: options,
      );
      return _unwrap(response.data);
    } on DioException catch (error) {
      throw AppException.fromDio(error);
    }
  }

  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.patch<dynamic>(
        path,
        data: _sanitizeWritePayload(
          _shouldAttachAuditFields(path, options)
              ? _withAuditFields(data, method: 'patch')
              : data,
        ),
        queryParameters: queryParameters?.compact(),
        options: options,
      );
      return _unwrap(response.data);
    } on DioException catch (error) {
      throw AppException.fromDio(error);
    }
  }

  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<dynamic>(
        path,
        data: _sanitizeWritePayload(
          _shouldAttachAuditFields(path, options)
              ? _withAuditFields(data, method: 'delete')
              : data,
        ),
        queryParameters: queryParameters?.compact(),
        options: options,
      );
      return _unwrap(response.data);
    } on DioException catch (error) {
      throw AppException.fromDio(error);
    }
  }

  dynamic _unwrap(dynamic payload) {
    if (payload is Map<String, dynamic> && payload.containsKey('data')) {
      if (payload['pagination'] is Map<String, dynamic>) {
        return payload;
      }

      return payload['data'];
    }

    return payload;
  }

  bool _shouldAttachAuditFields(String path, Options? options) {
    final extra = options?.extra;
    final attachAuditFields = extra == null ? null : extra['attachAuditFields'];
    if (attachAuditFields is bool) {
      return attachAuditFields;
    }

    return !(path.startsWith('/auth') || path.startsWith('/reports'));
  }

  Object _withAuditFields(Object? data, {required String method}) {
    final session = _sessionManager.session;
    final profile = session?.profile;
    final user = profile?.user;
    final authUser = profile?.authUser;

    final userId =
        (user?.keycloakUserId.isNotEmpty == true
            ? user!.keycloakUserId
            : null) ??
        (authUser?.sub.isNotEmpty == true ? authUser!.sub : null) ??
        (user?.metadata.id.isNotEmpty == true ? user!.metadata.id : null);
    final userName =
        (user?.name.isNotEmpty == true ? user!.name : null) ??
        (authUser?.name?.isNotEmpty == true ? authUser!.name : null) ??
        (authUser?.preferredUsername?.isNotEmpty == true
            ? authUser!.preferredUsername
            : null) ??
        userId;

    final userEmail =
        (user?.email.isNotEmpty == true ? user!.email : null) ??
        (authUser?.email?.isNotEmpty == true ? authUser!.email : null);

    if (data != null && data is! Map) {
      return data;
    }

    final map = data is Map<String, dynamic>
        ? Map<String, dynamic>.from(data)
        : <String, dynamic>{};

    if (method == 'post') {
      if (userName != null) {
        map.putIfAbsent('createdBy', () => userName);
      }
      if (userEmail != null) {
        map.putIfAbsent('createdByEmail', () => userEmail);
      }
    } else if (method == 'put' || method == 'patch' || method == 'delete') {
      if (userName != null) {
        map.putIfAbsent('updatedBy', () => userName);
      }
      if (userEmail != null) {
        map.putIfAbsent('updatedByEmail', () => userEmail);
      }
    }

    return map;
  }

  Object? _sanitizeWritePayload(Object? data) {
    if (data is Map) {
      final sanitized = <String, dynamic>{};
      for (final entry in data.entries) {
        sanitized[entry.key.toString()] = _sanitizeWritePayload(entry.value);
      }
      return sanitized;
    }

    if (data is List) {
      return data.map(_sanitizeWritePayload).toList();
    }

    return data;
  }
}
