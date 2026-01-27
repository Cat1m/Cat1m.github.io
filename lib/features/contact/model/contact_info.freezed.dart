// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactInfo {

 String get title; String get description; String get email; String get phone; String get location; String get cvUrl; bool get isOpenToWork; String get responseTime;// VN: Thêm trường này để list ra: Remote, Freelance, Full-time...
 List<String> get services; String? get linkedinUrl; String? get githubUrl; String? get mediumUrl; String? get facebookUrl;
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<ContactInfo> get copyWith => _$ContactInfoCopyWithImpl<ContactInfo>(this as ContactInfo, _$identity);

  /// Serializes this ContactInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.location, location) || other.location == location)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,email,phone,location,cvUrl,isOpenToWork,responseTime,const DeepCollectionEquality().hash(services),linkedinUrl,githubUrl,mediumUrl,facebookUrl);

@override
String toString() {
  return 'ContactInfo(title: $title, description: $description, email: $email, phone: $phone, location: $location, cvUrl: $cvUrl, isOpenToWork: $isOpenToWork, responseTime: $responseTime, services: $services, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, facebookUrl: $facebookUrl)';
}


}

/// @nodoc
abstract mixin class $ContactInfoCopyWith<$Res>  {
  factory $ContactInfoCopyWith(ContactInfo value, $Res Function(ContactInfo) _then) = _$ContactInfoCopyWithImpl;
@useResult
$Res call({
 String title, String description, String email, String phone, String location, String cvUrl, bool isOpenToWork, String responseTime, List<String> services, String? linkedinUrl, String? githubUrl, String? mediumUrl, String? facebookUrl
});




}
/// @nodoc
class _$ContactInfoCopyWithImpl<$Res>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._self, this._then);

  final ContactInfo _self;
  final $Res Function(ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? email = null,Object? phone = null,Object? location = null,Object? cvUrl = null,Object? isOpenToWork = null,Object? responseTime = null,Object? services = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? facebookUrl = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,cvUrl: null == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<String>,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactInfo].
extension ContactInfoPatterns on ContactInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactInfo value)  $default,){
final _that = this;
switch (_that) {
case _ContactInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String email,  String phone,  String location,  String cvUrl,  bool isOpenToWork,  String responseTime,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.title,_that.description,_that.email,_that.phone,_that.location,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String email,  String phone,  String location,  String cvUrl,  bool isOpenToWork,  String responseTime,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)  $default,) {final _that = this;
switch (_that) {
case _ContactInfo():
return $default(_that.title,_that.description,_that.email,_that.phone,_that.location,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String email,  String phone,  String location,  String cvUrl,  bool isOpenToWork,  String responseTime,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.title,_that.description,_that.email,_that.phone,_that.location,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactInfo implements ContactInfo {
  const _ContactInfo({required this.title, required this.description, required this.email, required this.phone, required this.location, required this.cvUrl, this.isOpenToWork = true, this.responseTime = "I usually reply within 24 hours", final  List<String> services = const [], this.linkedinUrl, this.githubUrl, this.mediumUrl, this.facebookUrl}): _services = services;
  factory _ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);

@override final  String title;
@override final  String description;
@override final  String email;
@override final  String phone;
@override final  String location;
@override final  String cvUrl;
@override@JsonKey() final  bool isOpenToWork;
@override@JsonKey() final  String responseTime;
// VN: Thêm trường này để list ra: Remote, Freelance, Full-time...
 final  List<String> _services;
// VN: Thêm trường này để list ra: Remote, Freelance, Full-time...
@override@JsonKey() List<String> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override final  String? linkedinUrl;
@override final  String? githubUrl;
@override final  String? mediumUrl;
@override final  String? facebookUrl;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoCopyWith<_ContactInfo> get copyWith => __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.location, location) || other.location == location)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,email,phone,location,cvUrl,isOpenToWork,responseTime,const DeepCollectionEquality().hash(_services),linkedinUrl,githubUrl,mediumUrl,facebookUrl);

@override
String toString() {
  return 'ContactInfo(title: $title, description: $description, email: $email, phone: $phone, location: $location, cvUrl: $cvUrl, isOpenToWork: $isOpenToWork, responseTime: $responseTime, services: $services, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, facebookUrl: $facebookUrl)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoCopyWith<$Res> implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(_ContactInfo value, $Res Function(_ContactInfo) _then) = __$ContactInfoCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String email, String phone, String location, String cvUrl, bool isOpenToWork, String responseTime, List<String> services, String? linkedinUrl, String? githubUrl, String? mediumUrl, String? facebookUrl
});




}
/// @nodoc
class __$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(this._self, this._then);

  final _ContactInfo _self;
  final $Res Function(_ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? email = null,Object? phone = null,Object? location = null,Object? cvUrl = null,Object? isOpenToWork = null,Object? responseTime = null,Object? services = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? facebookUrl = freezed,}) {
  return _then(_ContactInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,cvUrl: null == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<String>,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
