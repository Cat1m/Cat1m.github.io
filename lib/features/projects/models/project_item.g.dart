// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalProject _$PersonalProjectFromJson(Map<String, dynamic> json) =>
    PersonalProject(
      id: json['id'] as String,
      title: json['title'] as String,
      tagline: json['tagline'] as String,
      description: json['description'] as String,
      bannerUrl: json['bannerUrl'] as String,
      techStack: (json['techStack'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      platforms:
          (json['platforms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      githubLink: json['githubLink'] as String?,
      webLink: json['webLink'] as String?,
      appStoreLink: json['appStoreLink'] as String?,
      googlePlayLink: json['googlePlayLink'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PersonalProjectToJson(PersonalProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tagline': instance.tagline,
      'description': instance.description,
      'bannerUrl': instance.bannerUrl,
      'techStack': instance.techStack,
      'platforms': instance.platforms,
      'githubLink': instance.githubLink,
      'webLink': instance.webLink,
      'appStoreLink': instance.appStoreLink,
      'googlePlayLink': instance.googlePlayLink,
      'runtimeType': instance.$type,
    };

WorkProject _$WorkProjectFromJson(Map<String, dynamic> json) => WorkProject(
  id: json['id'] as String,
  title: json['title'] as String,
  tagline: json['tagline'] as String,
  description: json['description'] as String,
  bannerUrl: json['bannerUrl'] as String,
  techStack: (json['techStack'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  platforms:
      (json['platforms'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  companyName: json['companyName'] as String,
  role: json['role'] as String,
  appStoreLink: json['appStoreLink'] as String?,
  googlePlayLink: json['googlePlayLink'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WorkProjectToJson(WorkProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tagline': instance.tagline,
      'description': instance.description,
      'bannerUrl': instance.bannerUrl,
      'techStack': instance.techStack,
      'platforms': instance.platforms,
      'companyName': instance.companyName,
      'role': instance.role,
      'appStoreLink': instance.appStoreLink,
      'googlePlayLink': instance.googlePlayLink,
      'runtimeType': instance.$type,
    };
