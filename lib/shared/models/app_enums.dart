import 'package:json_annotation/json_annotation.dart';

enum MovementType {
  @JsonValue('ENTRY')
  entry,
  @JsonValue('OUTBOUND_TO_FIELD')
  outboundToField,
  @JsonValue('RETURN_FROM_FIELD')
  returnFromField,
  @JsonValue('ADJUSTMENT_IN')
  adjustmentIn,
  @JsonValue('ADJUSTMENT_OUT')
  adjustmentOut,
}

enum FieldOperationStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('FINISHED')
  finished,
  @JsonValue('CANCELED')
  canceled,
}

enum FarmUserRole {
  @JsonValue('OWNER')
  owner,
  @JsonValue('MANAGER')
  manager,
  @JsonValue('OPERATOR')
  operator,
  @JsonValue('VIEWER')
  viewer,
}

extension MovementTypeX on MovementType {
  String get label => switch (this) {
    MovementType.entry => 'Entrada',
    MovementType.outboundToField => 'Saída para campo',
    MovementType.returnFromField => 'Retorno do campo',
    MovementType.adjustmentIn => 'Ajuste positivo',
    MovementType.adjustmentOut => 'Ajuste negativo',
  };
}

extension FieldOperationStatusX on FieldOperationStatus {
  String get label => switch (this) {
    FieldOperationStatus.open => 'Aberta',
    FieldOperationStatus.finished => 'Finalizada',
    FieldOperationStatus.canceled => 'Cancelada',
  };
}

extension FarmUserRoleX on FarmUserRole {
  String get label => switch (this) {
    FarmUserRole.owner => 'Owner',
    FarmUserRole.manager => 'Manager',
    FarmUserRole.operator => 'Operator',
    FarmUserRole.viewer => 'Viewer',
  };
}
