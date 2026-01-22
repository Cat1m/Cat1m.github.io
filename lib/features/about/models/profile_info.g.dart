// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) => _ProfileInfo(
  name: json['name'] as String,
  title: json['title'] as String,
  tagline: json['tagline'] as String,
  summary: json['summary'] as String,
  avatarUrl: json['avatarUrl'] as String,
  location: json['location'] as String,
  email: json['email'] as String,
  cvLink: json['cvLink'] as String,
  linkedinUrl: json['linkedinUrl'] as String?,
  githubUrl: json['githubUrl'] as String?,
  mediumUrl: json['mediumUrl'] as String?,
  isOpenToWork: json['isOpenToWork'] as bool? ?? true,
);

Map<String, dynamic> _$ProfileInfoToJson(_ProfileInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'tagline': instance.tagline,
      'summary': instance.summary,
      'avatarUrl': instance.avatarUrl,
      'location': instance.location,
      'email': instance.email,
      'cvLink': instance.cvLink,
      'linkedinUrl': instance.linkedinUrl,
      'githubUrl': instance.githubUrl,
      'mediumUrl': instance.mediumUrl,
      'isOpenToWork': instance.isOpenToWork,
    };
