import 'package:dio/dio.dart';
import 'package:field_management_app/core/network/interceptors/auth_interceptor.dart';
import 'package:field_management_app/core/storage/secure_storage_service.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class _MockErrorInterceptorHandler extends Mock
    implements ErrorInterceptorHandler {}

class _FakeDioException extends Fake implements DioException {}

void main() {
  late FlutterSecureStorage storage;
  late SessionManager sessionManager;
  late AuthInterceptor interceptor;
  late ErrorInterceptorHandler handler;

  setUpAll(() {
    registerFallbackValue(_FakeDioException());
  });

  setUp(() {
    storage = _MockFlutterSecureStorage();
    handler = _MockErrorInterceptorHandler();
    sessionManager = SessionManager(SecureStorageService(storage));
    interceptor = AuthInterceptor(sessionManager: sessionManager);

    when(
      () => storage.write(
        key: any(named: 'key'),
        value: any(named: 'value'),
      ),
    ).thenAnswer((_) async {});
    when(() => storage.delete(key: any(named: 'key'))).thenAnswer((_) async {});
    when(() => handler.next(any())).thenReturn(null);
  });

  test('clears session on regular 401 responses', () async {
    await sessionManager.saveSession(
      const AuthSession(accessToken: 'token-de-teste'),
    );

    final requestOptions = RequestOptions(path: '/auth/me');
    final error = DioException(
      requestOptions: requestOptions,
      response: Response(requestOptions: requestOptions, statusCode: 401),
      type: DioExceptionType.badResponse,
    );

    await interceptor.onError(error, handler);
    await Future<void>.delayed(Duration.zero);

    expect(sessionManager.session, isNull);
  });

  test('does not clear session when request opts out of 401 reset', () async {
    await sessionManager.saveSession(
      const AuthSession(accessToken: 'token-de-teste'),
    );

    final requestOptions = RequestOptions(
      path: '/auth/sync-user',
      extra: const {AuthInterceptor.skipSessionClearOn401Key: true},
    );
    final error = DioException(
      requestOptions: requestOptions,
      response: Response(requestOptions: requestOptions, statusCode: 401),
      type: DioExceptionType.badResponse,
    );

    await interceptor.onError(error, handler);
    await Future<void>.delayed(Duration.zero);

    expect(sessionManager.session?.accessToken, 'token-de-teste');
  });
}
