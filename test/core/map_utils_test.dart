import 'package:field_management_app/core/utils/map_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('compact removes null and blank values', () {
    final payload = <String, dynamic>{
      'farmId': '123',
      'search': '',
      'active': true,
      'category': null,
    };

    expect(payload.compact(), <String, dynamic>{
      'farmId': '123',
      'active': true,
    });
  });
}
