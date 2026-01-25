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

/// @nodoc
mixin _$ProjectItem {

 String get id; String get title; String get tagline;// Câu mô tả ngắn gọn (Slogan)
 String get description;// Mô tả chi tiết (Challenges, Solutions)
 String get bannerUrl;// Ảnh cover của dự án
 bool get isPersonalProject;// True: Cá nhân, False: Công ty
 String? get companyName;// Tên công ty (nếu là project công ty)
 String get role;// Vai trò: Lead, Senior Dev, hay Solo
 List<String> get techStack;// Flutter, Firebase, Bloc...
 List<String> get platforms;// iOS, Android, Web
 String? get appStoreLink; String? get googlePlayLink; String? get webLink; String? get githubLink;// Chỉ hiện nếu là Personal hoặc Open Source
 DateTime? get startDate; DateTime? get endDate;
/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectItemCopyWith<ProjectItem> get copyWith => _$ProjectItemCopyWithImpl<ProjectItem>(this as ProjectItem, _$identity);

  /// Serializes this ProjectItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.isPersonalProject, isPersonalProject) || other.isPersonalProject == isPersonalProject)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.techStack, techStack)&&const DeepCollectionEquality().equals(other.platforms, platforms)&&(identical(other.appStoreLink, appStoreLink) || other.appStoreLink == appStoreLink)&&(identical(other.googlePlayLink, googlePlayLink) || other.googlePlayLink == googlePlayLink)&&(identical(other.webLink, webLink) || other.webLink == webLink)&&(identical(other.githubLink, githubLink) || other.githubLink == githubLink)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,tagline,description,bannerUrl,isPersonalProject,companyName,role,const DeepCollectionEquality().hash(techStack),const DeepCollectionEquality().hash(platforms),appStoreLink,googlePlayLink,webLink,githubLink,startDate,endDate);

@override
String toString() {
  return 'ProjectItem(id: $id, title: $title, tagline: $tagline, description: $description, bannerUrl: $bannerUrl, isPersonalProject: $isPersonalProject, companyName: $companyName, role: $role, techStack: $techStack, platforms: $platforms, appStoreLink: $appStoreLink, googlePlayLink: $googlePlayLink, webLink: $webLink, githubLink: $githubLink, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ProjectItemCopyWith<$Res>  {
  factory $ProjectItemCopyWith(ProjectItem value, $Res Function(ProjectItem) _then) = _$ProjectItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String tagline, String description, String bannerUrl, bool isPersonalProject, String? companyName, String role, List<String> techStack, List<String> platforms, String? appStoreLink, String? googlePlayLink, String? webLink, String? githubLink, DateTime? startDate, DateTime? endDate
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? bannerUrl = null,Object? isPersonalProject = null,Object? companyName = freezed,Object? role = null,Object? techStack = null,Object? platforms = null,Object? appStoreLink = freezed,Object? googlePlayLink = freezed,Object? webLink = freezed,Object? githubLink = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bannerUrl: null == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String,isPersonalProject: null == isPersonalProject ? _self.isPersonalProject : isPersonalProject // ignore: cast_nullable_to_non_nullable
as bool,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self.techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,appStoreLink: freezed == appStoreLink ? _self.appStoreLink : appStoreLink // ignore: cast_nullable_to_non_nullable
as String?,googlePlayLink: freezed == googlePlayLink ? _self.googlePlayLink : googlePlayLink // ignore: cast_nullable_to_non_nullable
as String?,webLink: freezed == webLink ? _self.webLink : webLink // ignore: cast_nullable_to_non_nullable
as String?,githubLink: freezed == githubLink ? _self.githubLink : githubLink // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  bool isPersonalProject,  String? companyName,  String role,  List<String> techStack,  List<String> platforms,  String? appStoreLink,  String? googlePlayLink,  String? webLink,  String? githubLink,  DateTime? startDate,  DateTime? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.isPersonalProject,_that.companyName,_that.role,_that.techStack,_that.platforms,_that.appStoreLink,_that.googlePlayLink,_that.webLink,_that.githubLink,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  bool isPersonalProject,  String? companyName,  String role,  List<String> techStack,  List<String> platforms,  String? appStoreLink,  String? googlePlayLink,  String? webLink,  String? githubLink,  DateTime? startDate,  DateTime? endDate)  $default,) {final _that = this;
switch (_that) {
case _ProjectItem():
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.isPersonalProject,_that.companyName,_that.role,_that.techStack,_that.platforms,_that.appStoreLink,_that.googlePlayLink,_that.webLink,_that.githubLink,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String tagline,  String description,  String bannerUrl,  bool isPersonalProject,  String? companyName,  String role,  List<String> techStack,  List<String> platforms,  String? appStoreLink,  String? googlePlayLink,  String? webLink,  String? githubLink,  DateTime? startDate,  DateTime? endDate)?  $default,) {final _that = this;
switch (_that) {
case _ProjectItem() when $default != null:
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.bannerUrl,_that.isPersonalProject,_that.companyName,_that.role,_that.techStack,_that.platforms,_that.appStoreLink,_that.googlePlayLink,_that.webLink,_that.githubLink,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectItem implements ProjectItem {
  const _ProjectItem({required this.id, required this.title, required this.tagline, required this.description, required this.bannerUrl, this.isPersonalProject = false, this.companyName, required this.role, required final  List<String> techStack, final  List<String> platforms = const [], this.appStoreLink, this.googlePlayLink, this.webLink, this.githubLink, this.startDate, this.endDate}): _techStack = techStack,_platforms = platforms;
  factory _ProjectItem.fromJson(Map<String, dynamic> json) => _$ProjectItemFromJson(json);

@override final  String id;
@override final  String title;
@override final  String tagline;
// Câu mô tả ngắn gọn (Slogan)
@override final  String description;
// Mô tả chi tiết (Challenges, Solutions)
@override final  String bannerUrl;
// Ảnh cover của dự án
@override@JsonKey() final  bool isPersonalProject;
// True: Cá nhân, False: Công ty
@override final  String? companyName;
// Tên công ty (nếu là project công ty)
@override final  String role;
// Vai trò: Lead, Senior Dev, hay Solo
 final  List<String> _techStack;
// Vai trò: Lead, Senior Dev, hay Solo
@override List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}

// Flutter, Firebase, Bloc...
 final  List<String> _platforms;
// Flutter, Firebase, Bloc...
@override@JsonKey() List<String> get platforms {
  if (_platforms is EqualUnmodifiableListView) return _platforms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_platforms);
}

// iOS, Android, Web
@override final  String? appStoreLink;
@override final  String? googlePlayLink;
@override final  String? webLink;
@override final  String? githubLink;
// Chỉ hiện nếu là Personal hoặc Open Source
@override final  DateTime? startDate;
@override final  DateTime? endDate;

/// Create a copy of ProjectItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectItemCopyWith<_ProjectItem> get copyWith => __$ProjectItemCopyWithImpl<_ProjectItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.isPersonalProject, isPersonalProject) || other.isPersonalProject == isPersonalProject)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._techStack, _techStack)&&const DeepCollectionEquality().equals(other._platforms, _platforms)&&(identical(other.appStoreLink, appStoreLink) || other.appStoreLink == appStoreLink)&&(identical(other.googlePlayLink, googlePlayLink) || other.googlePlayLink == googlePlayLink)&&(identical(other.webLink, webLink) || other.webLink == webLink)&&(identical(other.githubLink, githubLink) || other.githubLink == githubLink)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,tagline,description,bannerUrl,isPersonalProject,companyName,role,const DeepCollectionEquality().hash(_techStack),const DeepCollectionEquality().hash(_platforms),appStoreLink,googlePlayLink,webLink,githubLink,startDate,endDate);

@override
String toString() {
  return 'ProjectItem(id: $id, title: $title, tagline: $tagline, description: $description, bannerUrl: $bannerUrl, isPersonalProject: $isPersonalProject, companyName: $companyName, role: $role, techStack: $techStack, platforms: $platforms, appStoreLink: $appStoreLink, googlePlayLink: $googlePlayLink, webLink: $webLink, githubLink: $githubLink, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ProjectItemCopyWith<$Res> implements $ProjectItemCopyWith<$Res> {
  factory _$ProjectItemCopyWith(_ProjectItem value, $Res Function(_ProjectItem) _then) = __$ProjectItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String tagline, String description, String bannerUrl, bool isPersonalProject, String? companyName, String role, List<String> techStack, List<String> platforms, String? appStoreLink, String? googlePlayLink, String? webLink, String? githubLink, DateTime? startDate, DateTime? endDate
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? bannerUrl = null,Object? isPersonalProject = null,Object? companyName = freezed,Object? role = null,Object? techStack = null,Object? platforms = null,Object? appStoreLink = freezed,Object? googlePlayLink = freezed,Object? webLink = freezed,Object? githubLink = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_ProjectItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,bannerUrl: null == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String,isPersonalProject: null == isPersonalProject ? _self.isPersonalProject : isPersonalProject // ignore: cast_nullable_to_non_nullable
as bool,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,platforms: null == platforms ? _self._platforms : platforms // ignore: cast_nullable_to_non_nullable
as List<String>,appStoreLink: freezed == appStoreLink ? _self.appStoreLink : appStoreLink // ignore: cast_nullable_to_non_nullable
as String?,googlePlayLink: freezed == googlePlayLink ? _self.googlePlayLink : googlePlayLink // ignore: cast_nullable_to_non_nullable
as String?,webLink: freezed == webLink ? _self.webLink : webLink // ignore: cast_nullable_to_non_nullable
as String?,githubLink: freezed == githubLink ? _self.githubLink : githubLink // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
