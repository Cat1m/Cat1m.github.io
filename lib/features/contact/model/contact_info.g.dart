// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => _ContactInfo(
  title: json['title'] as String,
  description: json['description'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  location: json['location'] as String,
  cvUrl: json['cvUrl'] as String,
  isOpenToWork: json['isOpenToWork'] as bool? ?? true,
  responseTime:
      json['responseTime'] as String? ?? "I usually reply within 24 hours",
  services:
      (json['services'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  linkedinUrl: json['linkedinUrl'] as String?,
  githubUrl: json['githubUrl'] as String?,
  mediumUrl: json['mediumUrl'] as String?,
  facebookUrl: json['facebookUrl'] as String?,
);

Map<String, dynamic> _$ContactInfoToJson(_ContactInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'email': instance.email,
      'phone': instance.phone,
      'location': instance.location,
      'cvUrl': instance.cvUrl,
      'isOpenToWork': instance.isOpenToWork,
      'responseTime': instance.responseTime,
      'services': instance.services,
      'linkedinUrl': instance.linkedinUrl,
      'githubUrl': instance.githubUrl,
      'mediumUrl': instance.mediumUrl,
      'facebookUrl': instance.facebookUrl,
    };
