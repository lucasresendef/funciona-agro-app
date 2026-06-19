import 'package:dio/dio.dart';

class AppException implements Exception {
  const AppException({required this.message, this.statusCode, this.details});

  final String message;
  final int? statusCode;
  final Object? details;

  factory AppException.fromDio(DioException exception) {
    final responseData = exception.response?.data;

    if (responseData is Map<String, dynamic>) {
      final message = _extractBackendMessage(responseData);
      return AppException(
        message: message ?? _defaultMessage(exception),
        statusCode: exception.response?.statusCode,
        details: responseData,
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

  static String? _extractBackendMessage(Map<String, dynamic> responseData) {
    final message = responseData['message'];
    if (message is String && message.trim().isNotEmpty) {
      return message;
    }
    if (message is List && message.isNotEmpty) {
      return message.map((item) => item.toString()).join(' | ');
    }

    final errorDescription = responseData['error_description'];
    if (errorDescription is String && errorDescription.trim().isNotEmpty) {
      return errorDescription;
    }

    final error = responseData['error'];
    if (error is String && error.trim().isNotEmpty) {
      return error;
    }
    if (error is Map<String, dynamic>) {
      final nestedMessage = error['message'];
      if (nestedMessage is String && nestedMessage.trim().isNotEmpty) {
        return nestedMessage;
      }
    }

    return null;
  }

  @override
  String toString() => message;
}
