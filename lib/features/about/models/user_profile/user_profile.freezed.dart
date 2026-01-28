// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

// --- Identity Section (Từ Profile cũ) ---
 String get name; String get jobTitle;// map từ 'title' bên profile
 String get tagline; String get bio;// map từ 'summary'
 String get avatarUrl;// --- Contact & Work Section (Từ Contact cũ) ---
 String get location; String get email; String get phone; String get cvUrl; bool get isOpenToWork; String get responseTime;// VN: Câu chào mời hợp tác (map từ title bên contact cũ)
 String get contactHeading;// VN: Mô tả chi tiết về tình trạng open to work
 String get contactDescription;// VN: Các dịch vụ cung cấp (Remote, Freelance...)
 List<String> get services;// --- Social Links ---
 String? get linkedinUrl; String? get githubUrl; String? get mediumUrl; String? get facebookUrl;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.contactHeading, contactHeading) || other.contactHeading == contactHeading)&&(identical(other.contactDescription, contactDescription) || other.contactDescription == contactDescription)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,jobTitle,tagline,bio,avatarUrl,location,email,phone,cvUrl,isOpenToWork,responseTime,contactHeading,contactDescription,const DeepCollectionEquality().hash(services),linkedinUrl,githubUrl,mediumUrl,facebookUrl);

@override
String toString() {
  return 'UserProfile(name: $name, jobTitle: $jobTitle, tagline: $tagline, bio: $bio, avatarUrl: $avatarUrl, location: $location, email: $email, phone: $phone, cvUrl: $cvUrl, isOpenToWork: $isOpenToWork, responseTime: $responseTime, contactHeading: $contactHeading, contactDescription: $contactDescription, services: $services, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, facebookUrl: $facebookUrl)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String name, String jobTitle, String tagline, String bio, String avatarUrl, String location, String email, String phone, String cvUrl, bool isOpenToWork, String responseTime, String contactHeading, String contactDescription, List<String> services, String? linkedinUrl, String? githubUrl, String? mediumUrl, String? facebookUrl
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? jobTitle = null,Object? tagline = null,Object? bio = null,Object? avatarUrl = null,Object? location = null,Object? email = null,Object? phone = null,Object? cvUrl = null,Object? isOpenToWork = null,Object? responseTime = null,Object? contactHeading = null,Object? contactDescription = null,Object? services = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? facebookUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,cvUrl: null == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String,contactHeading: null == contactHeading ? _self.contactHeading : contactHeading // ignore: cast_nullable_to_non_nullable
as String,contactDescription: null == contactDescription ? _self.contactDescription : contactDescription // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<String>,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String jobTitle,  String tagline,  String bio,  String avatarUrl,  String location,  String email,  String phone,  String cvUrl,  bool isOpenToWork,  String responseTime,  String contactHeading,  String contactDescription,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.name,_that.jobTitle,_that.tagline,_that.bio,_that.avatarUrl,_that.location,_that.email,_that.phone,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.contactHeading,_that.contactDescription,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String jobTitle,  String tagline,  String bio,  String avatarUrl,  String location,  String email,  String phone,  String cvUrl,  bool isOpenToWork,  String responseTime,  String contactHeading,  String contactDescription,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.name,_that.jobTitle,_that.tagline,_that.bio,_that.avatarUrl,_that.location,_that.email,_that.phone,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.contactHeading,_that.contactDescription,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String jobTitle,  String tagline,  String bio,  String avatarUrl,  String location,  String email,  String phone,  String cvUrl,  bool isOpenToWork,  String responseTime,  String contactHeading,  String contactDescription,  List<String> services,  String? linkedinUrl,  String? githubUrl,  String? mediumUrl,  String? facebookUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.name,_that.jobTitle,_that.tagline,_that.bio,_that.avatarUrl,_that.location,_that.email,_that.phone,_that.cvUrl,_that.isOpenToWork,_that.responseTime,_that.contactHeading,_that.contactDescription,_that.services,_that.linkedinUrl,_that.githubUrl,_that.mediumUrl,_that.facebookUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile implements UserProfile {
  const _UserProfile({required this.name, required this.jobTitle, required this.tagline, required this.bio, required this.avatarUrl, required this.location, required this.email, required this.phone, required this.cvUrl, this.isOpenToWork = true, this.responseTime = "I usually reply within 24 hours", this.contactHeading = "Let's build something amazing together!", required this.contactDescription, final  List<String> services = const [], this.linkedinUrl, this.githubUrl, this.mediumUrl, this.facebookUrl}): _services = services;
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

// --- Identity Section (Từ Profile cũ) ---
@override final  String name;
@override final  String jobTitle;
// map từ 'title' bên profile
@override final  String tagline;
@override final  String bio;
// map từ 'summary'
@override final  String avatarUrl;
// --- Contact & Work Section (Từ Contact cũ) ---
@override final  String location;
@override final  String email;
@override final  String phone;
@override final  String cvUrl;
@override@JsonKey() final  bool isOpenToWork;
@override@JsonKey() final  String responseTime;
// VN: Câu chào mời hợp tác (map từ title bên contact cũ)
@override@JsonKey() final  String contactHeading;
// VN: Mô tả chi tiết về tình trạng open to work
@override final  String contactDescription;
// VN: Các dịch vụ cung cấp (Remote, Freelance...)
 final  List<String> _services;
// VN: Các dịch vụ cung cấp (Remote, Freelance...)
@override@JsonKey() List<String> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

// --- Social Links ---
@override final  String? linkedinUrl;
@override final  String? githubUrl;
@override final  String? mediumUrl;
@override final  String? facebookUrl;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl)&&(identical(other.isOpenToWork, isOpenToWork) || other.isOpenToWork == isOpenToWork)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.contactHeading, contactHeading) || other.contactHeading == contactHeading)&&(identical(other.contactDescription, contactDescription) || other.contactDescription == contactDescription)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.linkedinUrl, linkedinUrl) || other.linkedinUrl == linkedinUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,jobTitle,tagline,bio,avatarUrl,location,email,phone,cvUrl,isOpenToWork,responseTime,contactHeading,contactDescription,const DeepCollectionEquality().hash(_services),linkedinUrl,githubUrl,mediumUrl,facebookUrl);

@override
String toString() {
  return 'UserProfile(name: $name, jobTitle: $jobTitle, tagline: $tagline, bio: $bio, avatarUrl: $avatarUrl, location: $location, email: $email, phone: $phone, cvUrl: $cvUrl, isOpenToWork: $isOpenToWork, responseTime: $responseTime, contactHeading: $contactHeading, contactDescription: $contactDescription, services: $services, linkedinUrl: $linkedinUrl, githubUrl: $githubUrl, mediumUrl: $mediumUrl, facebookUrl: $facebookUrl)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String name, String jobTitle, String tagline, String bio, String avatarUrl, String location, String email, String phone, String cvUrl, bool isOpenToWork, String responseTime, String contactHeading, String contactDescription, List<String> services, String? linkedinUrl, String? githubUrl, String? mediumUrl, String? facebookUrl
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? jobTitle = null,Object? tagline = null,Object? bio = null,Object? avatarUrl = null,Object? location = null,Object? email = null,Object? phone = null,Object? cvUrl = null,Object? isOpenToWork = null,Object? responseTime = null,Object? contactHeading = null,Object? contactDescription = null,Object? services = null,Object? linkedinUrl = freezed,Object? githubUrl = freezed,Object? mediumUrl = freezed,Object? facebookUrl = freezed,}) {
  return _then(_UserProfile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,cvUrl: null == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String,isOpenToWork: null == isOpenToWork ? _self.isOpenToWork : isOpenToWork // ignore: cast_nullable_to_non_nullable
as bool,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as String,contactHeading: null == contactHeading ? _self.contactHeading : contactHeading // ignore: cast_nullable_to_non_nullable
as String,contactDescription: null == contactDescription ? _self.contactDescription : contactDescription // ignore: cast_nullable_to_non_nullable
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
