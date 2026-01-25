// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ProjectItem _$ProjectItemFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'personal':
          return PersonalProject.fromJson(
            json
          );
                case 'work':
          return WorkProject.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ProjectItem',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ProjectItem {

 String get id; String get title; String get tagline; String get description; String get bannerUrl; List<String> get techStack; List<String> get platforms;// e.g., Senior Mobile Dev
 String? get appStoreLink; String? get googlePlayLink;
/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectItemCopyWith<ProjectItem> get copyWith => _$ProjectItemCopyWithImpl<ProjectItem>(this as ProjectItem, _$identity);

  /// Serializes this ProjectItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&const DeepCollectionEquality().equals(other.techStack, techStack)&&const DeepCollectionEquality().equals(other.platforms, platforms)&&(identical(other.appStoreLink, appStoreLink) || other.appStoreLink == appStoreLink)&&(identical(other.googlePlayLink, googlePlayLink) || other.googlePlayLink == googlePlayLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,tagline,description,bannerUrl,const DeepCollectionEquality().hash(techStack),const DeepCollectionEquality().hash(platforms),appStoreLink,googlePlayLink);

@override
String toString() {
  return 'ProjectItem(id: $id, title: $title, tagline: $tagline, description: $description, bannerUrl: $bannerUrl, techStack: $techStack, platforms: $platforms, appStoreLink: $appStoreLink, googlePlayLink: $googlePlayLink)';
}


}

/// @nodoc
abstract mixin class $ProjectItemCopyWith<$Res>  {
  factory $ProjectItemCopyWith(ProjectItem value, $Res Function(ProjectItem) _then) = _$ProjectItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String tagline, String description, String bannerUrl, List<String> techStack, List<String> platforms, String? appStoreLink, String? googlePlayLink
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? bannerUrl = null,Object? techStack = null,Object? platforms = null,Object? appStoreLink = freezed,Object? googlePlayLink = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bannerUrl: null == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self.techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,appStoreLink: freezed == appStoreLink ? _self.appStoreLink : appStoreLink // ignore: cast_nullable_to_non_nullable
as String?,googlePlayLink: freezed == googlePlayLink ? _self.googlePlayLink : googlePlayLink // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PersonalProject value)?  personal,TResult Function( WorkProject value)?  work,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PersonalProject() when personal != null:
return personal(_that);case WorkProject() when work != null:
return work(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PersonalProject value)  personal,required TResult Function( WorkProject value)  work,}){
final _that = this;
switch (_that) {
case PersonalProject():
return personal(_that);case WorkProject():
return work(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PersonalProject value)?  personal,TResult? Function( WorkProject value)?  work,}){
final _that = this;
switch (_that) {
case PersonalProject() when personal != null:
return personal(_that);case WorkProject() when work != null:
return work(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String? githubLink,  String? webLink,  String? appStoreLink,  String? googlePlayLink)?  personal,TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String companyName,  String role,  String? appStoreLink,  String? googlePlayLink)?  work,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PersonalProject() when personal != null:
return personal(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.githubLink,_that.webLink,_that.appStoreLink,_that.googlePlayLink);case WorkProject() when work != null:
return work(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.companyName,_that.role,_that.appStoreLink,_that.googlePlayLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String? githubLink,  String? webLink,  String? appStoreLink,  String? googlePlayLink)  personal,required TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String companyName,  String role,  String? appStoreLink,  String? googlePlayLink)  work,}) {final _that = this;
switch (_that) {
case PersonalProject():
return personal(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.githubLink,_that.webLink,_that.appStoreLink,_that.googlePlayLink);case WorkProject():
return work(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.companyName,_that.role,_that.appStoreLink,_that.googlePlayLink);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String? githubLink,  String? webLink,  String? appStoreLink,  String? googlePlayLink)?  personal,TResult? Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  List<String> techStack,  List<String> platforms,  String companyName,  String role,  String? appStoreLink,  String? googlePlayLink)?  work,}) {final _that = this;
switch (_that) {
case PersonalProject() when personal != null:
return personal(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.githubLink,_that.webLink,_that.appStoreLink,_that.googlePlayLink);case WorkProject() when work != null:
return work(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.techStack,_that.platforms,_that.companyName,_that.role,_that.appStoreLink,_that.googlePlayLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PersonalProject extends ProjectItem {
  const PersonalProject({required this.id, required this.title, required this.tagline, required this.description, required this.bannerUrl, required final  List<String> techStack, final  List<String> platforms = const [], this.githubLink, this.webLink, this.appStoreLink, this.googlePlayLink, final  String? $type}): _techStack = techStack,_platforms = platforms,$type = $type ?? 'personal',super._();
  factory PersonalProject.fromJson(Map<String, dynamic> json) => _$PersonalProjectFromJson(json);

@override final  String id;
@override final  String title;
@override final  String tagline;
@override final  String description;
@override final  String bannerUrl;
 final  List<String> _techStack;
@override List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}

 final  List<String> _platforms;
@override@JsonKey() List<String> get platforms {
  if (_platforms is EqualUnmodifiableListView) return _platforms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_platforms);
}

// Đặc thù Personal
 final  String? githubLink;
 final  String? webLink;
@override final  String? appStoreLink;
@override final  String? googlePlayLink;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalProjectCopyWith<PersonalProject> get copyWith => _$PersonalProjectCopyWithImpl<PersonalProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalProject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&const DeepCollectionEquality().equals(other._techStack, _techStack)&&const DeepCollectionEquality().equals(other._platforms, _platforms)&&(identical(other.githubLink, githubLink) || other.githubLink == githubLink)&&(identical(other.webLink, webLink) || other.webLink == webLink)&&(identical(other.appStoreLink, appStoreLink) || other.appStoreLink == appStoreLink)&&(identical(other.googlePlayLink, googlePlayLink) || other.googlePlayLink == googlePlayLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,tagline,description,bannerUrl,const DeepCollectionEquality().hash(_techStack),const DeepCollectionEquality().hash(_platforms),githubLink,webLink,appStoreLink,googlePlayLink);

@override
String toString() {
  return 'ProjectItem.personal(id: $id, title: $title, tagline: $tagline, description: $description, bannerUrl: $bannerUrl, techStack: $techStack, platforms: $platforms, githubLink: $githubLink, webLink: $webLink, appStoreLink: $appStoreLink, googlePlayLink: $googlePlayLink)';
}


}

/// @nodoc
abstract mixin class $PersonalProjectCopyWith<$Res> implements $ProjectItemCopyWith<$Res> {
  factory $PersonalProjectCopyWith(PersonalProject value, $Res Function(PersonalProject) _then) = _$PersonalProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String tagline, String description, String bannerUrl, List<String> techStack, List<String> platforms, String? githubLink, String? webLink, String? appStoreLink, String? googlePlayLink
});




}
/// @nodoc
class _$PersonalProjectCopyWithImpl<$Res>
    implements $PersonalProjectCopyWith<$Res> {
  _$PersonalProjectCopyWithImpl(this._self, this._then);

  final PersonalProject _self;
  final $Res Function(PersonalProject) _then;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? bannerUrl = null,Object? techStack = null,Object? platforms = null,Object? githubLink = freezed,Object? webLink = freezed,Object? appStoreLink = freezed,Object? googlePlayLink = freezed,}) {
  return _then(PersonalProject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bannerUrl: null == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self._platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,githubLink: freezed == githubLink ? _self.githubLink : githubLink // ignore: cast_nullable_to_non_nullable
as String?,webLink: freezed == webLink ? _self.webLink : webLink // ignore: cast_nullable_to_non_nullable
as String?,appStoreLink: freezed == appStoreLink ? _self.appStoreLink : appStoreLink // ignore: cast_nullable_to_non_nullable
as String?,googlePlayLink: freezed == googlePlayLink ? _self.googlePlayLink : googlePlayLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WorkProject extends ProjectItem {
  const WorkProject({required this.id, required this.title, required this.tagline, required this.description, required this.bannerUrl, required final  List<String> techStack, final  List<String> platforms = const [], required this.companyName, required this.role, this.appStoreLink, this.googlePlayLink, final  String? $type}): _techStack = techStack,_platforms = platforms,$type = $type ?? 'work',super._();
  factory WorkProject.fromJson(Map<String, dynamic> json) => _$WorkProjectFromJson(json);

@override final  String id;
@override final  String title;
@override final  String tagline;
@override final  String description;
@override final  String bannerUrl;
 final  List<String> _techStack;
@override List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}

 final  List<String> _platforms;
@override@JsonKey() List<String> get platforms {
  if (_platforms is EqualUnmodifiableListView) return _platforms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_platforms);
}

// Đặc thù Work
 final  String companyName;
 final  String role;
// e.g., Senior Mobile Dev
@override final  String? appStoreLink;
@override final  String? googlePlayLink;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkProjectCopyWith<WorkProject> get copyWith => _$WorkProjectCopyWithImpl<WorkProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkProject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&const DeepCollectionEquality().equals(other._techStack, _techStack)&&const DeepCollectionEquality().equals(other._platforms, _platforms)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.role, role) || other.role == role)&&(identical(other.appStoreLink, appStoreLink) || other.appStoreLink == appStoreLink)&&(identical(other.googlePlayLink, googlePlayLink) || other.googlePlayLink == googlePlayLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,tagline,description,bannerUrl,const DeepCollectionEquality().hash(_techStack),const DeepCollectionEquality().hash(_platforms),companyName,role,appStoreLink,googlePlayLink);

@override
String toString() {
  return 'ProjectItem.work(id: $id, title: $title, tagline: $tagline, description: $description, bannerUrl: $bannerUrl, techStack: $techStack, platforms: $platforms, companyName: $companyName, role: $role, appStoreLink: $appStoreLink, googlePlayLink: $googlePlayLink)';
}


}

/// @nodoc
abstract mixin class $WorkProjectCopyWith<$Res> implements $ProjectItemCopyWith<$Res> {
  factory $WorkProjectCopyWith(WorkProject value, $Res Function(WorkProject) _then) = _$WorkProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String tagline, String description, String bannerUrl, List<String> techStack, List<String> platforms, String companyName, String role, String? appStoreLink, String? googlePlayLink
});




}
/// @nodoc
class _$WorkProjectCopyWithImpl<$Res>
    implements $WorkProjectCopyWith<$Res> {
  _$WorkProjectCopyWithImpl(this._self, this._then);

  final WorkProject _self;
  final $Res Function(WorkProject) _then;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? bannerUrl = null,Object? techStack = null,Object? platforms = null,Object? companyName = null,Object? role = null,Object? appStoreLink = freezed,Object? googlePlayLink = freezed,}) {
  return _then(WorkProject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bannerUrl: null == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self._platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,appStoreLink: freezed == appStoreLink ? _self.appStoreLink : appStoreLink // ignore: cast_nullable_to_non_nullable
as String?,googlePlayLink: freezed == googlePlayLink ? _self.googlePlayLink : googlePlayLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
