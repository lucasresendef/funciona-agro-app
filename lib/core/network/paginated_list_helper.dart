import 'package:field_management_app/core/network/api_client.dart';

class PaginatedResult<T> {
  const PaginatedResult({
    required this.data,
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });

  final List<T> data;
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  bool get hasNextPage => page < totalPages;

  PaginatedResult<R> map<R>(R Function(T item) mapper) {
    return PaginatedResult<R>(
      data: data.map(mapper).toList(),
      page: page,
      limit: limit,
      total: total,
      totalPages: totalPages,
    );
  }
}

Future<PaginatedResult<Map<String, dynamic>>> fetchPaginatedMaps({
  required ApiClient apiClient,
  required String path,
  required int page,
  int limit = 20,
  Map<String, dynamic>? queryParameters,
}) async {
  final baseQuery = Map<String, dynamic>.from(queryParameters ?? const {});
  final payload = await apiClient.get(
    path,
    queryParameters: {...baseQuery, 'page': page, 'limit': limit},
  );

  return _PaginatedPage.fromPayload(payload).toResult();
}

Future<List<Map<String, dynamic>>> fetchAllPaginatedMaps({
  required ApiClient apiClient,
  required String path,
  Map<String, dynamic>? queryParameters,
  int limit = 100,
}) async {
  final firstPage = await fetchPaginatedMaps(
    apiClient: apiClient,
    path: path,
    page: 1,
    limit: limit,
    queryParameters: queryParameters,
  );
  final items = <Map<String, dynamic>>[...firstPage.data];

  if (firstPage.totalPages <= 1) {
    return items;
  }

  for (var page = 2; page <= firstPage.totalPages; page++) {
    final result = await fetchPaginatedMaps(
      apiClient: apiClient,
      path: path,
      page: page,
      limit: limit,
      queryParameters: queryParameters,
    );
    items.addAll(result.data);
  }

  return items;
}

class _PaginatedPage {
  const _PaginatedPage({
    required this.items,
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });

  final List<Map<String, dynamic>> items;
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  factory _PaginatedPage.fromPayload(dynamic payload) {
    if (payload is List<dynamic>) {
      return _PaginatedPage(
        items: _toMapList(payload),
        page: 1,
        limit: payload.length,
        total: payload.length,
        totalPages: 1,
      );
    }

    if (payload is Map<String, dynamic> && payload['data'] is List<dynamic>) {
      final data = _toMapList(payload['data'] as List<dynamic>);
      final pagination = payload['pagination'];

      if (pagination is Map<String, dynamic>) {
        return _PaginatedPage(
          items: data,
          page: _toInt(pagination['page']) ?? 1,
          limit: _toInt(pagination['limit']) ?? data.length,
          total: _toInt(pagination['total']) ?? data.length,
          totalPages: _toInt(pagination['totalPages']) ?? 1,
        );
      }

      return _PaginatedPage(
        items: data,
        page: 1,
        limit: data.length,
        total: data.length,
        totalPages: 1,
      );
    }

    throw const FormatException('Unexpected paginated response format.');
  }

  PaginatedResult<Map<String, dynamic>> toResult() {
    return PaginatedResult<Map<String, dynamic>>(
      data: items,
      page: page,
      limit: limit,
      total: total,
      totalPages: totalPages,
    );
  }

  static List<Map<String, dynamic>> _toMapList(List<dynamic> items) {
    return items.map((item) => item as Map<String, dynamic>).toList();
  }

  static int? _toInt(dynamic value) {
    if (value is int) {
      return value;
    }
    return int.tryParse(value?.toString() ?? '');
  }
}
