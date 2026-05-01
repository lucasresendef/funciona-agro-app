String? extractFilenameFromContentDisposition(String? header) {
  if (header == null || header.trim().isEmpty) {
    return null;
  }

  final utf8Match = RegExp(
    r"filename\*=UTF-8''([^;]+)",
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
