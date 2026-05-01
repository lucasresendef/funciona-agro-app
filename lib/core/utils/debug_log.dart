import 'dart:convert';

import 'package:flutter/foundation.dart';

const bool _enableAppDebugLog = false;

void appDebugLog(
  String scope,
  String message, {
  Object? data,
  StackTrace? stackTrace,
}) {
  if (!_enableAppDebugLog) {
    return;
  }

  final buffer = StringBuffer('[$scope] $message');

  if (data != null) {
    buffer.write(' | ${_serializeLogData(data)}');
  }

  if (stackTrace != null) {
    buffer.write('\n$stackTrace');
  }

  debugPrint(buffer.toString());
}

String maskSecret(String value) {
  if (value.isEmpty) {
    return '(vazio)';
  }

  if (value.length <= 4) {
    return '*' * value.length;
  }

  final visibleStart = value.substring(0, 2);
  final visibleEnd = value.substring(value.length - 2);
  return '$visibleStart${'*' * (value.length - 4)}$visibleEnd';
}

Map<String, dynamic>? decodeJwtPayload(String token) {
  final segments = token.split('.');
  if (segments.length < 2) {
    return null;
  }

  try {
    final normalized = base64Url.normalize(segments[1]);
    final decoded = utf8.decode(base64Url.decode(normalized));
    final payload = jsonDecode(decoded);
    if (payload is Map<String, dynamic>) {
      return payload;
    }
  } catch (_) {}

  return null;
}

String _serializeLogData(Object data) {
  try {
    return jsonEncode(data);
  } catch (_) {
    return data.toString();
  }
}
