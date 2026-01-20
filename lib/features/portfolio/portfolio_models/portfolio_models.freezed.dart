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

 ProfileInfo get profile; List<ProjectItem> get projects; List<ExperienceItem> get experiences; List<SkillItem> get skills;
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioDataCopyWith<PortfolioData> get copyWith => _$PortfolioDataCopyWithImpl<PortfolioData>(this as PortfolioData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioData&&(identical(other.profile, profile) || other.profile == profile)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.experiences, experiences)&&const DeepCollectionEquality().equals(other.skills, skills));
}


@override
int get hashCode => Object.hash(runtimeType,profile,const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(experiences),const DeepCollectionEquality().hash(skills));

@override
String toString() {
  return 'PortfolioData(profile: $profile, projects: $projects, experiences: $experiences, skills: $skills)';
}


}

/// @nodoc
abstract mixin class $PortfolioDataCopyWith<$Res>  {
  factory $PortfolioDataCopyWith(PortfolioData value, $Res Function(PortfolioData) _then) = _$PortfolioDataCopyWithImpl;
@useResult
$Res call({
 ProfileInfo profile, List<ProjectItem> projects, List<ExperienceItem> experiences, List<SkillItem> skills
});


$ProfileInfoCopyWith<$Res> get profile;

}
/// @nodoc
class _$PortfolioDataCopyWithImpl<$Res>
    implements $PortfolioDataCopyWith<$Res> {
  _$PortfolioDataCopyWithImpl(this._self, this._then);

  final PortfolioData _self;
  final $Res Function(PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? projects = null,Object? experiences = null,Object? skills = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileInfo,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<ProjectItem>,experiences: null == experiences ? _self.experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,
  ));
}
/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileInfoCopyWith<$Res> get profile {
  
  return $ProfileInfoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileInfo profile,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.profile,_that.projects,_that.experiences,_that.skills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileInfo profile,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills)  $default,) {final _that = this;
switch (_that) {
case _PortfolioData():
return $default(_that.profile,_that.projects,_that.experiences,_that.skills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileInfo profile,  List<ProjectItem> projects,  List<ExperienceItem> experiences,  List<SkillItem> skills)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioData() when $default != null:
return $default(_that.profile,_that.projects,_that.experiences,_that.skills);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioData implements PortfolioData {
  const _PortfolioData({required this.profile, required final  List<ProjectItem> projects, required final  List<ExperienceItem> experiences, required final  List<SkillItem> skills}): _projects = projects,_experiences = experiences,_skills = skills;
  

@override final  ProfileInfo profile;
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


/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioDataCopyWith<_PortfolioData> get copyWith => __$PortfolioDataCopyWithImpl<_PortfolioData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioData&&(identical(other.profile, profile) || other.profile == profile)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._experiences, _experiences)&&const DeepCollectionEquality().equals(other._skills, _skills));
}


@override
int get hashCode => Object.hash(runtimeType,profile,const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_experiences),const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'PortfolioData(profile: $profile, projects: $projects, experiences: $experiences, skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$PortfolioDataCopyWith<$Res> implements $PortfolioDataCopyWith<$Res> {
  factory _$PortfolioDataCopyWith(_PortfolioData value, $Res Function(_PortfolioData) _then) = __$PortfolioDataCopyWithImpl;
@override @useResult
$Res call({
 ProfileInfo profile, List<ProjectItem> projects, List<ExperienceItem> experiences, List<SkillItem> skills
});


@override $ProfileInfoCopyWith<$Res> get profile;

}
/// @nodoc
class __$PortfolioDataCopyWithImpl<$Res>
    implements _$PortfolioDataCopyWith<$Res> {
  __$PortfolioDataCopyWithImpl(this._self, this._then);

  final _PortfolioData _self;
  final $Res Function(_PortfolioData) _then;

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? projects = null,Object? experiences = null,Object? skills = null,}) {
  return _then(_PortfolioData(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileInfo,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<ProjectItem>,experiences: null == experiences ? _self._experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,
  ));
}

/// Create a copy of PortfolioData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileInfoCopyWith<$Res> get profile {
  
  return $ProfileInfoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc
mixin _$ProfileInfo {

 String get name; String get title; String get summary; String get avatarUrl; String get cvLink;
/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInfoCopyWith<ProfileInfo> get copyWith => _$ProfileInfoCopyWithImpl<ProfileInfo>(this as ProfileInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.cvLink, cvLink) || other.cvLink == cvLink));
}


@override
int get hashCode => Object.hash(runtimeType,name,title,summary,avatarUrl,cvLink);

@override
String toString() {
  return 'ProfileInfo(name: $name, title: $title, summary: $summary, avatarUrl: $avatarUrl, cvLink: $cvLink)';
}


}

/// @nodoc
abstract mixin class $ProfileInfoCopyWith<$Res>  {
  factory $ProfileInfoCopyWith(ProfileInfo value, $Res Function(ProfileInfo) _then) = _$ProfileInfoCopyWithImpl;
@useResult
$Res call({
 String name, String title, String summary, String avatarUrl, String cvLink
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? summary = null,Object? avatarUrl = null,Object? cvLink = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,cvLink: null == cvLink ? _self.cvLink : cvLink // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String title,  String summary,  String avatarUrl,  String cvLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
return $default(_that.name,_that.title,_that.summary,_that.avatarUrl,_that.cvLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String title,  String summary,  String avatarUrl,  String cvLink)  $default,) {final _that = this;
switch (_that) {
case _ProfileInfo():
return $default(_that.name,_that.title,_that.summary,_that.avatarUrl,_that.cvLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String title,  String summary,  String avatarUrl,  String cvLink)?  $default,) {final _that = this;
switch (_that) {
case _ProfileInfo() when $default != null:
return $default(_that.name,_that.title,_that.summary,_that.avatarUrl,_that.cvLink);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileInfo implements ProfileInfo {
  const _ProfileInfo({required this.name, required this.title, required this.summary, required this.avatarUrl, required this.cvLink});
  

@override final  String name;
@override final  String title;
@override final  String summary;
@override final  String avatarUrl;
@override final  String cvLink;

/// Create a copy of ProfileInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileInfoCopyWith<_ProfileInfo> get copyWith => __$ProfileInfoCopyWithImpl<_ProfileInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.cvLink, cvLink) || other.cvLink == cvLink));
}


@override
int get hashCode => Object.hash(runtimeType,name,title,summary,avatarUrl,cvLink);

@override
String toString() {
  return 'ProfileInfo(name: $name, title: $title, summary: $summary, avatarUrl: $avatarUrl, cvLink: $cvLink)';
}


}

/// @nodoc
abstract mixin class _$ProfileInfoCopyWith<$Res> implements $ProfileInfoCopyWith<$Res> {
  factory _$ProfileInfoCopyWith(_ProfileInfo value, $Res Function(_ProfileInfo) _then) = __$ProfileInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, String summary, String avatarUrl, String cvLink
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? summary = null,Object? avatarUrl = null,Object? cvLink = null,}) {
  return _then(_ProfileInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,cvLink: null == cvLink ? _self.cvLink : cvLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProjectItem {

 String get title; String get description; List<String> get techStack; String? get link;
/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectItemCopyWith<ProjectItem> get copyWith => _$ProjectItemCopyWithImpl<ProjectItem>(this as ProjectItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectItem&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.techStack, techStack)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(techStack),link);

@override
String toString() {
  return 'ProjectItem(title: $title, description: $description, techStack: $techStack, link: $link)';
}


}

/// @nodoc
abstract mixin class $ProjectItemCopyWith<$Res>  {
  factory $ProjectItemCopyWith(ProjectItem value, $Res Function(ProjectItem) _then) = _$ProjectItemCopyWithImpl;
@useResult
$Res call({
 String title, String description, List<String> techStack, String? link
});




}
/// @nodoc
class _$ProjectItemCopyWithImpl<$Res>
    implements $ProjectItemCopyWith<$Res> {
  _$ProjectItemCopyWithImpl(this._self, this._then);

  final ProjectItem _self;
  final $Res Function(ProjectItem) _then;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? techStack = null,Object? link = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self.techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectItem].
extension ProjectItemPatterns on ProjectItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectItem value)  $default,){
final _that = this;
switch (_that) {
case _ProjectItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectItem value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  List<String> techStack,  String? link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
return $default(_that.title,_that.description,_that.techStack,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  List<String> techStack,  String? link)  $default,) {final _that = this;
switch (_that) {
case _ProjectItem():
return $default(_that.title,_that.description,_that.techStack,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  List<String> techStack,  String? link)?  $default,) {final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
return $default(_that.title,_that.description,_that.techStack,_that.link);case _:
  return null;

}
}

}

/// @nodoc


class _ProjectItem implements ProjectItem {
  const _ProjectItem({required this.title, required this.description, required final  List<String> techStack, this.link}): _techStack = techStack;
  

@override final  String title;
@override final  String description;
 final  List<String> _techStack;
@override List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}

@override final  String? link;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectItemCopyWith<_ProjectItem> get copyWith => __$ProjectItemCopyWithImpl<_ProjectItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectItem&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._techStack, _techStack)&&(identical(other.link, link) || other.link == link));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_techStack),link);

@override
String toString() {
  return 'ProjectItem(title: $title, description: $description, techStack: $techStack, link: $link)';
}


}

/// @nodoc
abstract mixin class _$ProjectItemCopyWith<$Res> implements $ProjectItemCopyWith<$Res> {
  factory _$ProjectItemCopyWith(_ProjectItem value, $Res Function(_ProjectItem) _then) = __$ProjectItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, List<String> techStack, String? link
});




}
/// @nodoc
class __$ProjectItemCopyWithImpl<$Res>
    implements _$ProjectItemCopyWith<$Res> {
  __$ProjectItemCopyWithImpl(this._self, this._then);

  final _ProjectItem _self;
  final $Res Function(_ProjectItem) _then;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? techStack = null,Object? link = freezed,}) {
  return _then(_ProjectItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ExperienceItem {

 String get role; String get company; String get duration;
/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceItemCopyWith<ExperienceItem> get copyWith => _$ExperienceItemCopyWithImpl<ExperienceItem>(this as ExperienceItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceItem&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,role,company,duration);

@override
String toString() {
  return 'ExperienceItem(role: $role, company: $company, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $ExperienceItemCopyWith<$Res>  {
  factory $ExperienceItemCopyWith(ExperienceItem value, $Res Function(ExperienceItem) _then) = _$ExperienceItemCopyWithImpl;
@useResult
$Res call({
 String role, String company, String duration
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
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? company = null,Object? duration = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String company,  String duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.role,_that.company,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String company,  String duration)  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem():
return $default(_that.role,_that.company,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String company,  String duration)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.role,_that.company,_that.duration);case _:
  return null;

}
}

}

/// @nodoc


class _ExperienceItem implements ExperienceItem {
  const _ExperienceItem({required this.role, required this.company, required this.duration});
  

@override final  String role;
@override final  String company;
@override final  String duration;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceItemCopyWith<_ExperienceItem> get copyWith => __$ExperienceItemCopyWithImpl<_ExperienceItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceItem&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,role,company,duration);

@override
String toString() {
  return 'ExperienceItem(role: $role, company: $company, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$ExperienceItemCopyWith<$Res> implements $ExperienceItemCopyWith<$Res> {
  factory _$ExperienceItemCopyWith(_ExperienceItem value, $Res Function(_ExperienceItem) _then) = __$ExperienceItemCopyWithImpl;
@override @useResult
$Res call({
 String role, String company, String duration
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
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? company = null,Object? duration = null,}) {
  return _then(_ExperienceItem(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SkillItem {

 String get name;
/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillItemCopyWith<SkillItem> get copyWith => _$SkillItemCopyWithImpl<SkillItem>(this as SkillItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillItem&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SkillItem(name: $name)';
}


}

/// @nodoc
abstract mixin class $SkillItemCopyWith<$Res>  {
  factory $SkillItemCopyWith(SkillItem value, $Res Function(SkillItem) _then) = _$SkillItemCopyWithImpl;
@useResult
$Res call({
 String name
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _SkillItem():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _SkillItem implements SkillItem {
  const _SkillItem({required this.name});
  

@override final  String name;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillItemCopyWith<_SkillItem> get copyWith => __$SkillItemCopyWithImpl<_SkillItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillItem&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SkillItem(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SkillItemCopyWith<$Res> implements $SkillItemCopyWith<$Res> {
  factory _$SkillItemCopyWith(_SkillItem value, $Res Function(_SkillItem) _then) = __$SkillItemCopyWithImpl;
@override @useResult
$Res call({
 String name
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_SkillItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
