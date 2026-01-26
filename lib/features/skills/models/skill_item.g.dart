// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillItem _$SkillItemFromJson(Map<String, dynamic> json) => _SkillItem(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$SkillTypeEnumMap, json['type']),
  iconUrl: json['iconUrl'] as String?,
  isHighlight: json['isHighlight'] as bool? ?? false,
);

Map<String, dynamic> _$SkillItemToJson(_SkillItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$SkillTypeEnumMap[instance.type]!,
      'iconUrl': instance.iconUrl,
      'isHighlight': instance.isHighlight,
    };

const _$SkillTypeEnumMap = {
  SkillType.mobile: 'mobile',
  SkillType.backend: 'backend',
  SkillType.database: 'database',
  SkillType.devops: 'devops',
  SkillType.uiux: 'uiux',
};
