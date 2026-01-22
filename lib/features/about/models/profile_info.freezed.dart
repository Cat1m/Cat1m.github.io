// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileInfo {

 String get name; String get title; String get tagline; String get summary; String get avatarUrl; String get location; String get email;// VN: Đã thêm lại field này
 String get cvLink; String? get linkedinUrl; String? get githubUrl; String? get mediumUrl; bool get isOpenToWork;
/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInfoCopyWith<ProfileInfo> get copyWith => _$ProfileInfoCopyWithImpl<ProfileInfo>(this as ProfileInfo, _$identity);

  /// Serializes this ProfileInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.cvLink, cvLink) || other.cvLink == cvLink)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,tagline,summary,avatarUrl,location,email,cvLink,linkedinUrl,githubUrl,mediumUrl,isOpenToWork);

@override
String toString() {
  return 'ProfileInfo(name: $name, title: $title, tagline: $tagline, summary: $summary, avatarUrl: $avatarUrl, location: $location, email: $email, cvLink: $cvLink, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, isOpenToWork: $isOpenToWork)';
}


}

/// @nodoc
abstract mixin class $ProfileInfoCopyWith<$Res>  {
  factory $ProfileInfoCopyWith(ProfileInfo value, $Res Function(ProfileInfo) _then) = _$ProfileInfoCopyWithImpl;
@useResult
$Res call({
 String name, String title, String tagline, String summary, String avatarUrl, String location, String email, String cvLink, String? linkedinUrl, String? githubUrl, String? mediumUrl, bool isOpenToWork
});




}
/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._self, this._then);

  final ProfileInfo _self;
  final $Res Function(ProfileInfo) _then;

/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? tagline = null,Object? summary = null,Object? avatarUrl = null,Object? location = null,Object? email = null,Object? cvLink = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? isOpenToWork = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,cvLink: null == cvLink ? _self.cvLink : cvLink // ignore: cast_nullable_to_non_nullable
as String,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileInfo].
extension ProfileInfoPatterns on ProfileInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileInfo value)  $default,){
final _that = this;
switch (_that) {
case _ProfileInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String title,  String tagline,  String summary,  String avatarUrl,  String location,  String email,  String cvLink,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  bool isOpenToWork)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
return $default(_that.name,_that.title,_that.tagline,_that.summary,_that.avatarUrl,_that.location,_that.email,_that.cvLink,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.isOpenToWork);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String title,  String tagline,  String summary,  String avatarUrl,  String location,  String email,  String cvLink,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  bool isOpenToWork)  $default,) {final _that = this;
switch (_that) {
case _ProfileInfo():
return $default(_that.name,_that.title,_that.tagline,_that.summary,_that.avatarUrl,_that.location,_that.email,_that.cvLink,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.isOpenToWork);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String title,  String tagline,  String summary,  String avatarUrl,  String location,  String email,  String cvLink,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  bool isOpenToWork)?  $default,) {final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
return $default(_that.name,_that.title,_that.tagline,_that.summary,_that.avatarUrl,_that.location,_that.email,_that.cvLink,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.isOpenToWork);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileInfo implements ProfileInfo {
  const _ProfileInfo({required this.name, required this.title, required this.tagline, required this.summary, required this.avatarUrl, required this.location, required this.email, required this.cvLink, this.linkedinUrl, this.githubUrl, this.mediumUrl, this.isOpenToWork = true});
  factory _ProfileInfo.fromJson(Map<String, dynamic> json) => _$ProfileInfoFromJson(json);

@override final  String name;
@override final  String title;
@override final  String tagline;
@override final  String summary;
@override final  String avatarUrl;
@override final  String location;
@override final  String email;
// VN: Đã thêm lại field này
@override final  String cvLink;
@override final  String? linkedinUrl;
@override final  String? githubUrl;
@override final  String? mediumUrl;
@override@JsonKey() final  bool isOpenToWork;

/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileInfoCopyWith<_ProfileInfo> get copyWith => __$ProfileInfoCopyWithImpl<_ProfileInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.cvLink, cvLink) || other.cvLink == cvLink)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,tagline,summary,avatarUrl,location,email,cvLink,linkedinUrl,githubUrl,mediumUrl,isOpenToWork);

@override
String toString() {
  return 'ProfileInfo(name: $name, title: $title, tagline: $tagline, summary: $summary, avatarUrl: $avatarUrl, location: $location, email: $email, cvLink: $cvLink, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, isOpenToWork: $isOpenToWork)';
}


}

/// @nodoc
abstract mixin class _$ProfileInfoCopyWith<$Res> implements $ProfileInfoCopyWith<$Res> {
  factory _$ProfileInfoCopyWith(_ProfileInfo value, $Res Function(_ProfileInfo) _then) = __$ProfileInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, String tagline, String summary, String avatarUrl, String location, String email, String cvLink, String? linkedinUrl, String? githubUrl, String? mediumUrl, bool isOpenToWork
});




}
/// @nodoc
class __$ProfileInfoCopyWithImpl<$Res>
    implements _$ProfileInfoCopyWith<$Res> {
  __$ProfileInfoCopyWithImpl(this._self, this._then);

  final _ProfileInfo _self;
  final $Res Function(_ProfileInfo) _then;

/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? tagline = null,Object? summary = null,Object? avatarUrl = null,Object? location = null,Object? email = null,Object? cvLink = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? isOpenToWork = null,}) {
  return _then(_ProfileInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,cvLink: null == cvLink ? _self.cvLink : cvLink // ignore: cast_nullable_to_non_nullable
as String,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
