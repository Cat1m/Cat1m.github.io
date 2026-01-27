// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogItem _$BlogItemFromJson(Map<String, dynamic> json) => _BlogItem(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  link: json['link'] as String,
  coverUrl: json['coverUrl'] as String,
  publishedDate: DateTime.parse(json['publishedDate'] as String),
  readTime: json['readTime'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$BlogItemToJson(_BlogItem instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'link': instance.link,
  'coverUrl': instance.coverUrl,
  'publishedDate': instance.publishedDate.toIso8601String(),
  'readTime': instance.readTime,
  'tags': instance.tags,
};
