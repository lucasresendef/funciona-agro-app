import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_metadata.freezed.dart';
part 'audit_metadata.g.dart';

@freezed
abstract class AuditMetadata with _$AuditMetadata {
  const factory AuditMetadata({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
  }) = _AuditMetadata;

  factory AuditMetadata.fromJson(Map<String, dynamic> json) =>
      _$AuditMetadataFromJson(json);
}
