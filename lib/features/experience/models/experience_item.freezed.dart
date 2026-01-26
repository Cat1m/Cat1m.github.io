// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExperienceItem {

 String get id; String get role;// Ví dụ: Senior Mobile Developer
 String get company;// Ví dụ: Tech Company A
 String? get companyUrl;// Link tới web công ty (tăng uy tín)
 String? get companyLogo;// Logo công ty
// VN: Thay vì string "2020 - 2021", dùng DateTime để dễ sort
 DateTime get startTime; DateTime? get endTime;// Null = Present (Hiện tại)
 String get location;// Ví dụ: Ho Chi Minh, Vietnam
 String get type;// Ví dụ: Full-time, Remote, Hybrid
// VN: Đây là phần quan trọng nhất với HR
// Dùng List<String> để hiển thị gạch đầu dòng
 List<String> get responsibilities;// VN: Tech stack cụ thể cho job này
 List<String> get techStack;
/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceItemCopyWith<ExperienceItem> get copyWith => _$ExperienceItemCopyWithImpl<ExperienceItem>(this as ExperienceItem, _$identity);

  /// Serializes this ExperienceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyUrl, companyUrl) || other.companyUrl == companyUrl)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.responsibilities, responsibilities)&&const DeepCollectionEquality().equals(other.techStack, techStack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,company,companyUrl,companyLogo,startTime,endTime,location,type,const DeepCollectionEquality().hash(responsibilities),const DeepCollectionEquality().hash(techStack));

@override
String toString() {
  return 'ExperienceItem(id: $id, role: $role, company: $company, companyUrl: $companyUrl, companyLogo: $companyLogo, startTime: $startTime, endTime: $endTime, location: $location, type: $type, responsibilities: $responsibilities, techStack: $techStack)';
}


}

/// @nodoc
abstract mixin class $ExperienceItemCopyWith<$Res>  {
  factory $ExperienceItemCopyWith(ExperienceItem value, $Res Function(ExperienceItem) _then) = _$ExperienceItemCopyWithImpl;
@useResult
$Res call({
 String id, String role, String company, String? companyUrl, String? companyLogo, DateTime startTime, DateTime? endTime, String location, String type, List<String> responsibilities, List<String> techStack
});




}
/// @nodoc
class _$ExperienceItemCopyWithImpl<$Res>
    implements $ExperienceItemCopyWith<$Res> {
  _$ExperienceItemCopyWithImpl(this._self, this._then);

  final ExperienceItem _self;
  final $Res Function(ExperienceItem) _then;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = null,Object? company = null,Object? companyUrl = freezed,Object? companyLogo = freezed,Object? startTime = null,Object? endTime = freezed,Object? location = null,Object? type = null,Object? responsibilities = null,Object? techStack = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,companyUrl: freezed == companyUrl ? _self.companyUrl : companyUrl // ignore: cast_nullable_to_non_nullable
as String?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,responsibilities: null == responsibilities ? _self.responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<String>,techStack: null == techStack ? _self.techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceItem].
extension ExperienceItemPatterns on ExperienceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceItem value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceItem value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String role,  String company,  String? companyUrl,  String? companyLogo,  DateTime startTime,  DateTime? endTime,  String location,  String type,  List<String> responsibilities,  List<String> techStack)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.id,_that.role,_that.company,_that.companyUrl,_that.companyLogo,_that.startTime,_that.endTime,_that.location,_that.type,_that.responsibilities,_that.techStack);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String role,  String company,  String? companyUrl,  String? companyLogo,  DateTime startTime,  DateTime? endTime,  String location,  String type,  List<String> responsibilities,  List<String> techStack)  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem():
return $default(_that.id,_that.role,_that.company,_that.companyUrl,_that.companyLogo,_that.startTime,_that.endTime,_that.location,_that.type,_that.responsibilities,_that.techStack);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String role,  String company,  String? companyUrl,  String? companyLogo,  DateTime startTime,  DateTime? endTime,  String location,  String type,  List<String> responsibilities,  List<String> techStack)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.id,_that.role,_that.company,_that.companyUrl,_that.companyLogo,_that.startTime,_that.endTime,_that.location,_that.type,_that.responsibilities,_that.techStack);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceItem implements ExperienceItem {
  const _ExperienceItem({required this.id, required this.role, required this.company, this.companyUrl, this.companyLogo, required this.startTime, this.endTime, required this.location, required this.type, required final  List<String> responsibilities, final  List<String> techStack = const []}): _responsibilities = responsibilities,_techStack = techStack;
  factory _ExperienceItem.fromJson(Map<String, dynamic> json) => _$ExperienceItemFromJson(json);

@override final  String id;
@override final  String role;
// Ví dụ: Senior Mobile Developer
@override final  String company;
// Ví dụ: Tech Company A
@override final  String? companyUrl;
// Link tới web công ty (tăng uy tín)
@override final  String? companyLogo;
// Logo công ty
// VN: Thay vì string "2020 - 2021", dùng DateTime để dễ sort
@override final  DateTime startTime;
@override final  DateTime? endTime;
// Null = Present (Hiện tại)
@override final  String location;
// Ví dụ: Ho Chi Minh, Vietnam
@override final  String type;
// Ví dụ: Full-time, Remote, Hybrid
// VN: Đây là phần quan trọng nhất với HR
// Dùng List<String> để hiển thị gạch đầu dòng
 final  List<String> _responsibilities;
// Ví dụ: Full-time, Remote, Hybrid
// VN: Đây là phần quan trọng nhất với HR
// Dùng List<String> để hiển thị gạch đầu dòng
@override List<String> get responsibilities {
  if (_responsibilities is EqualUnmodifiableListView) return _responsibilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_responsibilities);
}

// VN: Tech stack cụ thể cho job này
 final  List<String> _techStack;
// VN: Tech stack cụ thể cho job này
@override@JsonKey() List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}


/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceItemCopyWith<_ExperienceItem> get copyWith => __$ExperienceItemCopyWithImpl<_ExperienceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.companyUrl, companyUrl) || other.companyUrl == companyUrl)&&(identical(other.companyLogo, companyLogo) || other.companyLogo == companyLogo)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._responsibilities, _responsibilities)&&const DeepCollectionEquality().equals(other._techStack, _techStack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,company,companyUrl,companyLogo,startTime,endTime,location,type,const DeepCollectionEquality().hash(_responsibilities),const DeepCollectionEquality().hash(_techStack));

@override
String toString() {
  return 'ExperienceItem(id: $id, role: $role, company: $company, companyUrl: $companyUrl, companyLogo: $companyLogo, startTime: $startTime, endTime: $endTime, location: $location, type: $type, responsibilities: $responsibilities, techStack: $techStack)';
}


}

/// @nodoc
abstract mixin class _$ExperienceItemCopyWith<$Res> implements $ExperienceItemCopyWith<$Res> {
  factory _$ExperienceItemCopyWith(_ExperienceItem value, $Res Function(_ExperienceItem) _then) = __$ExperienceItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String role, String company, String? companyUrl, String? companyLogo, DateTime startTime, DateTime? endTime, String location, String type, List<String> responsibilities, List<String> techStack
});




}
/// @nodoc
class __$ExperienceItemCopyWithImpl<$Res>
    implements _$ExperienceItemCopyWith<$Res> {
  __$ExperienceItemCopyWithImpl(this._self, this._then);

  final _ExperienceItem _self;
  final $Res Function(_ExperienceItem) _then;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = null,Object? company = null,Object? companyUrl = freezed,Object? companyLogo = freezed,Object? startTime = null,Object? endTime = freezed,Object? location = null,Object? type = null,Object? responsibilities = null,Object? techStack = null,}) {
  return _then(_ExperienceItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,companyUrl: freezed == companyUrl ? _self.companyUrl : companyUrl // ignore: cast_nullable_to_non_nullable
as String?,companyLogo: freezed == companyLogo ? _self.companyLogo : companyLogo // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,responsibilities: null == responsibilities ? _self._responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as List<String>,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
