// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditMetadata _$AuditMetadataFromJson(Map<String, dynamic> json) =>
    _AuditMetadata(
      id: json['id'] as String,
      active: json['active'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String?,
      createdByEmail: json['createdByEmail'] as String?,
      updatedBy: json['updatedBy'] as String?,
      updatedByEmail: json['updatedByEmail'] as String?,
    );

Map<String, dynamic> _$AuditMetadataToJson(_AuditMetadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdByEmail': instance.createdByEmail,
      'updatedBy': instance.updatedBy,
      'updatedByEmail': instance.updatedByEmail,
    };
