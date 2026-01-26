// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CertificateItem _$CertificateItemFromJson(Map<String, dynamic> json) =>
    _CertificateItem(
      id: json['id'] as String,
      name: json['name'] as String,
      issuer: json['issuer'] as String,
      logoUrl: json['logoUrl'] as String?,
      date: DateTime.parse(json['date'] as String),
      credentialUrl: json['credentialUrl'] as String?,
      credentialId: json['credentialId'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CertificateItemToJson(_CertificateItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'issuer': instance.issuer,
      'logoUrl': instance.logoUrl,
      'date': instance.date.toIso8601String(),
      'credentialUrl': instance.credentialUrl,
      'credentialId': instance.credentialId,
      'skills': instance.skills,
    };
