extension NullableMapExtension on Map<String, dynamic> {
  Map<String, dynamic> compact() {
    final result = <String, dynamic>{};

    forEach((key, value) {
      if (value != null && value.toString().isNotEmpty) {
        result[key] = value;
      }
    });

    return result;
  }
}
