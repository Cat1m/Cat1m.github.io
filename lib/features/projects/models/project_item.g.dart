// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectItem _$ProjectItemFromJson(Map<String, dynamic> json) => _ProjectItem(
  id: json['id'] as String,
  title: json['title'] as String,
  tagline: json['tagline'] as String,
  description: json['description'] as String,
  bannerUrl: json['bannerUrl'] as String,
  isPersonalProject: json['isPersonalProject'] as bool? ?? false,
  companyName: json['companyName'] as String?,
  role: json['role'] as String,
  techStack: (json['techStack'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  platforms:
      (json['platforms'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  appStoreLink: json['appStoreLink'] as String?,
  googlePlayLink: json['googlePlayLink'] as String?,
  webLink: json['webLink'] as String?,
  githubLink: json['githubLink'] as String?,
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
);

Map<String, dynamic> _$ProjectItemToJson(_ProjectItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tagline': instance.tagline,
      'description': instance.description,
      'bannerUrl': instance.bannerUrl,
      'isPersonalProject': instance.isPersonalProject,
      'companyName': instance.companyName,
      'role': instance.role,
      'techStack': instance.techStack,
      'platforms': instance.platforms,
      'appStoreLink': instance.appStoreLink,
      'googlePlayLink': instance.googlePlayLink,
      'webLink': instance.webLink,
      'githubLink': instance.githubLink,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
