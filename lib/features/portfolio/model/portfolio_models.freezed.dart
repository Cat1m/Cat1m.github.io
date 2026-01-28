// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioData {

// VN: Thay thế ProfileInfo và ContactInfo bằng UserProfile
 UserProfile get user; List<ProjectItem> get projects; List<ExperienceItem> get experiences; List<SkillItem> get skills; List<EducationItem> get educations; List<CertificateItem> get certificates; List<BlogItem> get blogs;
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioDataCopyWith<PortfolioData> get copyWith => _$PortfolioDataCopyWithImpl<PortfolioData>(this as PortfolioData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioData&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.experiences, experiences)&&const DeepCollectionEquality().equals(other.skills, skills)&&const DeepCollectionEquality().equals(other.educations, educations)&&const DeepCollectionEquality().equals(other.certificates, certificates)&&const DeepCollectionEquality().equals(other.blogs, blogs));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(experiences),const DeepCollectionEquality().hash(skills),const DeepCollectionEquality().hash(educations),const DeepCollectionEquality().hash(certificates),const DeepCollectionEquality().hash(blogs));

@override
String toString() {
  return 'PortfolioData(user: $user, projects: $projects, experiences: $experiences, skills: $skills, educations: $educations, certificates: $certificates, blogs: $blogs)';
}


}

/// @nodoc
abstract mixin class $PortfolioDataCopyWith<$Res>  {
  factory $PortfolioDataCopyWith(PortfolioData value, $Res Function(PortfolioData) _then) = _$PortfolioDataCopyWithImpl;
@useResult
$Res call({
 UserProfile user, List<ProjectItem> projects, List<ExperienceItem> experiences, List<SkillItem> skills, List<EducationItem> educations, List<CertificateItem> certificates, List<BlogItem> blogs
});


$UserProfileCopyWith<$Res> get user;

}
/// @nodoc
class _$PortfolioDataCopyWithImpl<$Res>
    implements $PortfolioDataCopyWith<$Res> {
  _$PortfolioDataCopyWithImpl(this._self, this._then);

  final PortfolioData _self;
  final $Res Function(PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? projects = null,Object? experiences = null,Object? skills = null,Object? educations = null,Object? certificates = null,Object? blogs = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<ProjectItem>,experiences: null == experiences ? _self.experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,educations: null == educations ? _self.educations : educations // ignore: cast_nullable_to_non_nullable
as List<EducationItem>,certificates: null == certificates ? _self.certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<CertificateItem>,blogs: null == blogs ? _self.blogs : blogs // ignore: cast_nullable_to_non_nullable
as List<BlogItem>,
  ));
}
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get user {
  
  return $UserProfileCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioData].
extension PortfolioDataPatterns on PortfolioData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioData value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioData value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile user,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills,  List<EducationItem> educations,  List<CertificateItem> certificates,  List<BlogItem> blogs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.user,_that.projects,_that.experiences,_that.skills,_that.educations,_that.certificates,_that.blogs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile user,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills,  List<EducationItem> educations,  List<CertificateItem> certificates,  List<BlogItem> blogs)  $default,) {final _that = this;
switch (_that) {
case _PortfolioData():
return $default(_that.user,_that.projects,_that.experiences,_that.skills,_that.educations,_that.certificates,_that.blogs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile user,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills,  List<EducationItem> educations,  List<CertificateItem> certificates,  List<BlogItem> blogs)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.user,_that.projects,_that.experiences,_that.skills,_that.educations,_that.certificates,_that.blogs);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioData implements PortfolioData {
  const _PortfolioData({required this.user, required final  List<ProjectItem> projects, required final  List<ExperienceItem> experiences, required final  List<SkillItem> skills, required final  List<EducationItem> educations, required final  List<CertificateItem> certificates, required final  List<BlogItem> blogs}): _projects = projects,_experiences = experiences,_skills = skills,_educations = educations,_certificates = certificates,_blogs = blogs;
  

// VN: Thay thế ProfileInfo và ContactInfo bằng UserProfile
@override final  UserProfile user;
 final  List<ProjectItem> _projects;
@override List<ProjectItem> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<ExperienceItem> _experiences;
@override List<ExperienceItem> get experiences {
  if (_experiences is EqualUnmodifiableListView) return _experiences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_experiences);
}

 final  List<SkillItem> _skills;
@override List<SkillItem> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

 final  List<EducationItem> _educations;
@override List<EducationItem> get educations {
  if (_educations is EqualUnmodifiableListView) return _educations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_educations);
}

 final  List<CertificateItem> _certificates;
@override List<CertificateItem> get certificates {
  if (_certificates is EqualUnmodifiableListView) return _certificates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certificates);
}

 final  List<BlogItem> _blogs;
@override List<BlogItem> get blogs {
  if (_blogs is EqualUnmodifiableListView) return _blogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blogs);
}


/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioDataCopyWith<_PortfolioData> get copyWith => __$PortfolioDataCopyWithImpl<_PortfolioData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioData&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._experiences, _experiences)&&const DeepCollectionEquality().equals(other._skills, _skills)&&const DeepCollectionEquality().equals(other._educations, _educations)&&const DeepCollectionEquality().equals(other._certificates, _certificates)&&const DeepCollectionEquality().equals(other._blogs, _blogs));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_experiences),const DeepCollectionEquality().hash(_skills),const DeepCollectionEquality().hash(_educations),const DeepCollectionEquality().hash(_certificates),const DeepCollectionEquality().hash(_blogs));

@override
String toString() {
  return 'PortfolioData(user: $user, projects: $projects, experiences: $experiences, skills: $skills, educations: $educations, certificates: $certificates, blogs: $blogs)';
}


}

/// @nodoc
abstract mixin class _$PortfolioDataCopyWith<$Res> implements $PortfolioDataCopyWith<$Res> {
  factory _$PortfolioDataCopyWith(_PortfolioData value, $Res Function(_PortfolioData) _then) = __$PortfolioDataCopyWithImpl;
@override @useResult
$Res call({
 UserProfile user, List<ProjectItem> projects, List<ExperienceItem> experiences, List<SkillItem> skills, List<EducationItem> educations, List<CertificateItem> certificates, List<BlogItem> blogs
});


@override $UserProfileCopyWith<$Res> get user;

}
/// @nodoc
class __$PortfolioDataCopyWithImpl<$Res>
    implements _$PortfolioDataCopyWith<$Res> {
  __$PortfolioDataCopyWithImpl(this._self, this._then);

  final _PortfolioData _self;
  final $Res Function(_PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? projects = null,Object? experiences = null,Object? skills = null,Object? educations = null,Object? certificates = null,Object? blogs = null,}) {
  return _then(_PortfolioData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<ProjectItem>,experiences: null == experiences ? _self._experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,educations: null == educations ? _self._educations : educations // ignore: cast_nullable_to_non_nullable
as List<EducationItem>,certificates: null == certificates ? _self._certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<CertificateItem>,blogs: null == blogs ? _self._blogs : blogs // ignore: cast_nullable_to_non_nullable
as List<BlogItem>,
  ));
}

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get user {
  
  return $UserProfileCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
