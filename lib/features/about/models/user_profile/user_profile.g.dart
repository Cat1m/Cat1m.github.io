// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  name: json['name'] as String,
  jobTitle: json['jobTitle'] as String,
  tagline: json['tagline'] as String,
  bio: json['bio'] as String,
  avatarUrl: json['avatarUrl'] as String,
  location: json['location'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  cvUrl: json['cvUrl'] as String,
  isOpenToWork: json['isOpenToWork'] as bool? ?? true,
  responseTime:
      json['responseTime'] as String? ?? "I usually reply within 24 hours",
  contactHeading:
      json['contactHeading'] as String? ??
      "Let's build something amazing together!",
  contactDescription: json['contactDescription'] as String,
  services:
      (json['services'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  hobbies:
      (json['hobbies'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  linkedinUrl: json['linkedinUrl'] as String?,
  githubUrl: json['githubUrl'] as String?,
  mediumUrl: json['mediumUrl'] as String?,
  facebookUrl: json['facebookUrl'] as String?,
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'jobTitle': instance.jobTitle,
      'tagline': instance.tagline,
      'bio': instance.bio,
      'avatarUrl': instance.avatarUrl,
      'location': instance.location,
      'email': instance.email,
      'phone': instance.phone,
      'cvUrl': instance.cvUrl,
      'isOpenToWork': instance.isOpenToWork,
      'responseTime': instance.responseTime,
      'contactHeading': instance.contactHeading,
      'contactDescription': instance.contactDescription,
      'services': instance.services,
      'hobbies': instance.hobbies,
      'linkedinUrl': instance.linkedinUrl,
      'githubUrl': instance.githubUrl,
      'mediumUrl': instance.mediumUrl,
      'facebookUrl': instance.facebookUrl,
    };
