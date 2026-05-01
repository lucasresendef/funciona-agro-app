import 'package:dio/dio.dart';

class AppException implements Exception {
  const AppException({required this.message, this.statusCode, this.details});

  final String message;
  final int? statusCode;
  final Object? details;

  factory AppException.fromDio(DioException exception) {
    final responseData = exception.response?.data;

    if (responseData is Map<String, dynamic>) {
      return AppException(
        message:
            responseData['message']?.toString() ?? _defaultMessage(exception),
        statusCode: exception.response?.statusCode,
        details: responseData['details'],
      );
    }

    return AppException(
      message: _defaultMessage(exception),
      statusCode: exception.response?.statusCode,
      details: responseData,
    );
  }

  static String _defaultMessage(DioException exception) {
    return switch (exception.type) {
      DioExceptionType.connectionTimeout => 'Tempo de conexão esgotado.',
      DioExceptionType.receiveTimeout => 'Tempo de resposta esgotado.',
      DioExceptionType.sendTimeout => 'Tempo de envio esgotado.',
      DioExceptionType.connectionError => 'Falha de conexão com o servidor.',
      DioExceptionType.badCertificate => 'Certificado inválido.',
      DioExceptionType.cancel => 'Requisição cancelada.',
      DioExceptionType.badResponse =>
        'Falha ao processar a resposta do servidor.',
      DioExceptionType.unknown => 'Erro inesperado de comunicação.',
    };
  }

  @override
  String toString() => message;
}
