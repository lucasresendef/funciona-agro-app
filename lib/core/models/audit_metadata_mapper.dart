import 'package:field_management_app/core/models/audit_metadata.dart';

AuditMetadata buildAuditMetadata({
  required String id,
  required bool active,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? createdBy,
  String? createdByEmail,
  String? updatedBy,
  String? updatedByEmail,
}) {
  return AuditMetadata(
    id: id,
    active: active,
    createdAt: createdAt,
    updatedAt: updatedAt,
    createdBy: createdBy,
    createdByEmail: createdByEmail,
    updatedBy: updatedBy,
    updatedByEmail: updatedByEmail,
  );
}
