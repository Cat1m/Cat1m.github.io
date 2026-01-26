// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceItem _$ExperienceItemFromJson(Map<String, dynamic> json) =>
    _ExperienceItem(
      id: json['id'] as String,
      role: json['role'] as String,
      company: json['company'] as String,
      companyUrl: json['companyUrl'] as String?,
      companyLogo: json['companyLogo'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      location: json['location'] as String,
      type: json['type'] as String,
      responsibilities: (json['responsibilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      techStack:
          (json['techStack'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ExperienceItemToJson(_ExperienceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'company': instance.company,
      'companyUrl': instance.companyUrl,
      'companyLogo': instance.companyLogo,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'location': instance.location,
      'type': instance.type,
      'responsibilities': instance.responsibilities,
      'techStack': instance.techStack,
    };
