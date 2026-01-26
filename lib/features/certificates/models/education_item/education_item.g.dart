// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationItem _$EducationItemFromJson(Map<String, dynamic> json) =>
    _EducationItem(
      id: json['id'] as String,
      school: json['school'] as String,
      degree: json['degree'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      logoUrl: json['logoUrl'] as String?,
      achievements:
          (json['achievements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EducationItemToJson(_EducationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school': instance.school,
      'degree': instance.degree,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'logoUrl': instance.logoUrl,
      'achievements': instance.achievements,
    };
