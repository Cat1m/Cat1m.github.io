// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationItem {

 String get id; String get school;// Tên trường (e.g. HCM University of Technology)
 String get degree;// Bằng cấp (e.g. Bachelor of Software Engineering)
 DateTime get startTime; DateTime get endTime; String? get logoUrl;// Logo trường
 List<String> get achievements;
/// Create a copy of EducationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationItemCopyWith<EducationItem> get copyWith => _$EducationItemCopyWithImpl<EducationItem>(this as EducationItem, _$identity);

  /// Serializes this EducationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.school, school) || other.school == school)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&const DeepCollectionEquality().equals(other.achievements, achievements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,school,degree,startTime,endTime,logoUrl,const DeepCollectionEquality().hash(achievements));

@override
String toString() {
  return 'EducationItem(id: $id, school: $school, degree: $degree, startTime: $startTime, endTime: $endTime, logoUrl: $logoUrl, achievements: $achievements)';
}


}

/// @nodoc
abstract mixin class $EducationItemCopyWith<$Res>  {
  factory $EducationItemCopyWith(EducationItem value, $Res Function(EducationItem) _then) = _$EducationItemCopyWithImpl;
@useResult
$Res call({
 String id, String school, String degree, DateTime startTime, DateTime endTime, String? logoUrl, List<String> achievements
});




}
/// @nodoc
class _$EducationItemCopyWithImpl<$Res>
    implements $EducationItemCopyWith<$Res> {
  _$EducationItemCopyWithImpl(this._self, this._then);

  final EducationItem _self;
  final $Res Function(EducationItem) _then;

/// Create a copy of EducationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? school = null,Object? degree = null,Object? startTime = null,Object? endTime = null,Object? logoUrl = freezed,Object? achievements = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,achievements: null == achievements ? _self.achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationItem].
extension EducationItemPatterns on EducationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationItem value)  $default,){
final _that = this;
switch (_that) {
case _EducationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationItem value)?  $default,){
final _that = this;
switch (_that) {
case _EducationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String school,  String degree,  DateTime startTime,  DateTime endTime,  String? logoUrl,  List<String> achievements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationItem() when $default != null:
return $default(_that.id,_that.school,_that.degree,_that.startTime,_that.endTime,_that.logoUrl,_that.achievements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String school,  String degree,  DateTime startTime,  DateTime endTime,  String? logoUrl,  List<String> achievements)  $default,) {final _that = this;
switch (_that) {
case _EducationItem():
return $default(_that.id,_that.school,_that.degree,_that.startTime,_that.endTime,_that.logoUrl,_that.achievements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String school,  String degree,  DateTime startTime,  DateTime endTime,  String? logoUrl,  List<String> achievements)?  $default,) {final _that = this;
switch (_that) {
case _EducationItem() when $default != null:
return $default(_that.id,_that.school,_that.degree,_that.startTime,_that.endTime,_that.logoUrl,_that.achievements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationItem implements EducationItem {
  const _EducationItem({required this.id, required this.school, required this.degree, required this.startTime, required this.endTime, this.logoUrl, final  List<String> achievements = const []}): _achievements = achievements;
  factory _EducationItem.fromJson(Map<String, dynamic> json) => _$EducationItemFromJson(json);

@override final  String id;
@override final  String school;
// Tên trường (e.g. HCM University of Technology)
@override final  String degree;
// Bằng cấp (e.g. Bachelor of Software Engineering)
@override final  DateTime startTime;
@override final  DateTime endTime;
@override final  String? logoUrl;
// Logo trường
 final  List<String> _achievements;
// Logo trường
@override@JsonKey() List<String> get achievements {
  if (_achievements is EqualUnmodifiableListView) return _achievements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_achievements);
}


/// Create a copy of EducationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationItemCopyWith<_EducationItem> get copyWith => __$EducationItemCopyWithImpl<_EducationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationItem&&(identical(other.id, id) || other.id == id)&&(identical(other.school, school) || other.school == school)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&const DeepCollectionEquality().equals(other._achievements, _achievements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,school,degree,startTime,endTime,logoUrl,const DeepCollectionEquality().hash(_achievements));

@override
String toString() {
  return 'EducationItem(id: $id, school: $school, degree: $degree, startTime: $startTime, endTime: $endTime, logoUrl: $logoUrl, achievements: $achievements)';
}


}

/// @nodoc
abstract mixin class _$EducationItemCopyWith<$Res> implements $EducationItemCopyWith<$Res> {
  factory _$EducationItemCopyWith(_EducationItem value, $Res Function(_EducationItem) _then) = __$EducationItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String school, String degree, DateTime startTime, DateTime endTime, String? logoUrl, List<String> achievements
});




}
/// @nodoc
class __$EducationItemCopyWithImpl<$Res>
    implements _$EducationItemCopyWith<$Res> {
  __$EducationItemCopyWithImpl(this._self, this._then);

  final _EducationItem _self;
  final $Res Function(_EducationItem) _then;

/// Create a copy of EducationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? school = null,Object? degree = null,Object? startTime = null,Object? endTime = null,Object? logoUrl = freezed,Object? achievements = null,}) {
  return _then(_EducationItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,achievements: null == achievements ? _self._achievements : achievements // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
