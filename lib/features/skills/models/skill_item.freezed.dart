// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillItem {

 String get id; String get name; SkillType get type; String? get iconUrl;// Optional: Nếu muốn hiện logo icon bên cạnh text
 bool get isHighlight;
/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillItemCopyWith<SkillItem> get copyWith => _$SkillItemCopyWithImpl<SkillItem>(this as SkillItem, _$identity);

  /// Serializes this SkillItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isHighlight, isHighlight) || other.isHighlight == isHighlight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,iconUrl,isHighlight);

@override
String toString() {
  return 'SkillItem(id: $id, name: $name, type: $type, iconUrl: $iconUrl, isHighlight: $isHighlight)';
}


}

/// @nodoc
abstract mixin class $SkillItemCopyWith<$Res>  {
  factory $SkillItemCopyWith(SkillItem value, $Res Function(SkillItem) _then) = _$SkillItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, SkillType type, String? iconUrl, bool isHighlight
});




}
/// @nodoc
class _$SkillItemCopyWithImpl<$Res>
    implements $SkillItemCopyWith<$Res> {
  _$SkillItemCopyWithImpl(this._self, this._then);

  final SkillItem _self;
  final $Res Function(SkillItem) _then;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? iconUrl = freezed,Object? isHighlight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SkillType,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isHighlight: null == isHighlight ? _self.isHighlight : isHighlight // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillItem].
extension SkillItemPatterns on SkillItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillItem value)  $default,){
final _that = this;
switch (_that) {
case _SkillItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillItem value)?  $default,){
final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  SkillType type,  String? iconUrl,  bool isHighlight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.iconUrl,_that.isHighlight);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  SkillType type,  String? iconUrl,  bool isHighlight)  $default,) {final _that = this;
switch (_that) {
case _SkillItem():
return $default(_that.id,_that.name,_that.type,_that.iconUrl,_that.isHighlight);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  SkillType type,  String? iconUrl,  bool isHighlight)?  $default,) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.iconUrl,_that.isHighlight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillItem implements SkillItem {
  const _SkillItem({required this.id, required this.name, required this.type, this.iconUrl, this.isHighlight = false});
  factory _SkillItem.fromJson(Map<String, dynamic> json) => _$SkillItemFromJson(json);

@override final  String id;
@override final  String name;
@override final  SkillType type;
@override final  String? iconUrl;
// Optional: Nếu muốn hiện logo icon bên cạnh text
@override@JsonKey() final  bool isHighlight;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillItemCopyWith<_SkillItem> get copyWith => __$SkillItemCopyWithImpl<_SkillItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isHighlight, isHighlight) || other.isHighlight == isHighlight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,iconUrl,isHighlight);

@override
String toString() {
  return 'SkillItem(id: $id, name: $name, type: $type, iconUrl: $iconUrl, isHighlight: $isHighlight)';
}


}

/// @nodoc
abstract mixin class _$SkillItemCopyWith<$Res> implements $SkillItemCopyWith<$Res> {
  factory _$SkillItemCopyWith(_SkillItem value, $Res Function(_SkillItem) _then) = __$SkillItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, SkillType type, String? iconUrl, bool isHighlight
});




}
/// @nodoc
class __$SkillItemCopyWithImpl<$Res>
    implements _$SkillItemCopyWith<$Res> {
  __$SkillItemCopyWithImpl(this._self, this._then);

  final _SkillItem _self;
  final $Res Function(_SkillItem) _then;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? iconUrl = freezed,Object? isHighlight = null,}) {
  return _then(_SkillItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SkillType,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isHighlight: null == isHighlight ? _self.isHighlight : isHighlight // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
