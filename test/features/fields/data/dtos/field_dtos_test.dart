import 'package:field_management_app/features/fields/data/dtos/field_dtos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('FieldDto parses areaHectares when API sends string', () {
    final dto = FieldDto.fromJson(<String, dynamic>{
      'id': 'field-1',
      'active': true,
      'farmId': 'farm-1',
      'name': 'Talhão A',
      'areaHectares': '12.75',
      'description': 'Área teste',
    });

    expect(dto.areaHectares, 12.75);
  });

  test('FieldDto parses areaHectares with comma decimal string', () {
    final dto = FieldDto.fromJson(<String, dynamic>{
      'id': 'field-2',
      'active': true,
      'farmId': 'farm-1',
      'name': 'Talhão B',
      'areaHectares': '8,5',
    });

    expect(dto.areaHectares, 8.5);
  });
}
