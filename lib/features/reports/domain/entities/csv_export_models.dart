enum InventoryMovementsCsvMode { filtered, all }

extension InventoryMovementsCsvModeX on InventoryMovementsCsvMode {
  String get value {
    switch (this) {
      case InventoryMovementsCsvMode.filtered:
        return 'filtered';
      case InventoryMovementsCsvMode.all:
        return 'all';
    }
  }

  String get label {
    switch (this) {
      case InventoryMovementsCsvMode.filtered:
        return 'Filtrado';
      case InventoryMovementsCsvMode.all:
        return 'Todos';
    }
  }
}

class InventoryMovementsCsvExportParams {
  const InventoryMovementsCsvExportParams({
    required this.mode,
    this.from,
    this.to,
    this.farmId,
  });

  final InventoryMovementsCsvMode mode;
  final DateTime? from;
  final DateTime? to;
  final String? farmId;

  Map<String, dynamic> toQueryParameters() {
    final isFiltered = mode == InventoryMovementsCsvMode.filtered;
    return {
      'mode': mode.value,
      if (isFiltered) 'farmId': farmId,
      if (isFiltered && from != null) 'from': from!.toUtc().toIso8601String(),
      if (isFiltered && to != null) 'to': to!.toUtc().toIso8601String(),
    };
  }

  String resolveFileName(String? contentDispositionHeader) {
    return extractCsvFilename(contentDispositionHeader) ??
        'inventory-movements.csv';
  }
}

class InventoryMovementsCsvDownloadedFile {
  const InventoryMovementsCsvDownloadedFile({
    required this.tempFilePath,
    required this.filename,
    required this.sizeInBytes,
    required this.downloadedAt,
  });

  final String tempFilePath;
  final String filename;
  final int sizeInBytes;
  final DateTime downloadedAt;
}

String? extractCsvFilename(String? contentDispositionHeader) {
  final parsed = _extractFilenameFromContentDisposition(
    contentDispositionHeader,
  );
  if (parsed == null || parsed.trim().isEmpty) {
    return null;
  }
  if (parsed.toLowerCase().endsWith('.csv')) {
    return parsed;
  }
  return '$parsed.csv';
}

String? _extractFilenameFromContentDisposition(String? header) {
  if (header == null || header.trim().isEmpty) {
    return null;
  }

  final utf8Match = RegExp(
    r"filename\\*=UTF-8''([^;]+)",
    caseSensitive: false,
  ).firstMatch(header);
  if (utf8Match != null) {
    return Uri.decodeComponent(utf8Match.group(1)!).replaceAll('"', '').trim();
  }

  final filenameMatch = RegExp(
    r'filename="?([^";]+)"?',
    caseSensitive: false,
  ).firstMatch(header);

  return filenameMatch?.group(1)?.trim();
}
