// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CertificateItem {

 String get id; String get name;// Tên chứng chỉ (e.g. Google Cloud Associate)
 String get issuer;// Tổ chức cấp (e.g. Google, Coursera)
 String? get logoUrl;// Logo tổ chức (Optional)
 DateTime get date;// Ngày cấp
 String? get credentialUrl;// Link xác thực
 String? get credentialId;// ID chứng chỉ (Optional)
 List<String> get skills;
/// Create a copy of CertificateItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateItemCopyWith<CertificateItem> get copyWith => _$CertificateItemCopyWithImpl<CertificateItem>(this as CertificateItem, _$identity);

  /// Serializes this CertificateItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificateItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.date, date) || other.date == date)&&(identical(other.credentialUrl, credentialUrl) || other.credentialUrl == credentialUrl)&&(identical(other.credentialId, credentialId) || other.credentialId == credentialId)&&const DeepCollectionEquality().equals(other.skills, skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,issuer,logoUrl,date,credentialUrl,credentialId,const DeepCollectionEquality().hash(skills));

@override
String toString() {
  return 'CertificateItem(id: $id, name: $name, issuer: $issuer, logoUrl: $logoUrl, date: $date, credentialUrl: $credentialUrl, credentialId: $credentialId, skills: $skills)';
}


}

/// @nodoc
abstract mixin class $CertificateItemCopyWith<$Res>  {
  factory $CertificateItemCopyWith(CertificateItem value, $Res Function(CertificateItem) _then) = _$CertificateItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String issuer, String? logoUrl, DateTime date, String? credentialUrl, String? credentialId, List<String> skills
});




}
/// @nodoc
class _$CertificateItemCopyWithImpl<$Res>
    implements $CertificateItemCopyWith<$Res> {
  _$CertificateItemCopyWithImpl(this._self, this._then);

  final CertificateItem _self;
  final $Res Function(CertificateItem) _then;

/// Create a copy of CertificateItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? issuer = null,Object? logoUrl = freezed,Object? date = null,Object? credentialUrl = freezed,Object? credentialId = freezed,Object? skills = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,credentialUrl: freezed == credentialUrl ? _self.credentialUrl : credentialUrl // ignore: cast_nullable_to_non_nullable
as String?,credentialId: freezed == credentialId ? _self.credentialId : credentialId // ignore: cast_nullable_to_non_nullable
as String?,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificateItem].
extension CertificateItemPatterns on CertificateItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificateItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificateItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificateItem value)  $default,){
final _that = this;
switch (_that) {
case _CertificateItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificateItem value)?  $default,){
final _that = this;
switch (_that) {
case _CertificateItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String issuer,  String? logoUrl,  DateTime date,  String? credentialUrl,  String? credentialId,  List<String> skills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificateItem() when $default != null:
return $default(_that.id,_that.name,_that.issuer,_that.logoUrl,_that.date,_that.credentialUrl,_that.credentialId,_that.skills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String issuer,  String? logoUrl,  DateTime date,  String? credentialUrl,  String? credentialId,  List<String> skills)  $default,) {final _that = this;
switch (_that) {
case _CertificateItem():
return $default(_that.id,_that.name,_that.issuer,_that.logoUrl,_that.date,_that.credentialUrl,_that.credentialId,_that.skills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String issuer,  String? logoUrl,  DateTime date,  String? credentialUrl,  String? credentialId,  List<String> skills)?  $default,) {final _that = this;
switch (_that) {
case _CertificateItem() when $default != null:
return $default(_that.id,_that.name,_that.issuer,_that.logoUrl,_that.date,_that.credentialUrl,_that.credentialId,_that.skills);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificateItem implements CertificateItem {
  const _CertificateItem({required this.id, required this.name, required this.issuer, this.logoUrl, required this.date, this.credentialUrl, this.credentialId, final  List<String> skills = const []}): _skills = skills;
  factory _CertificateItem.fromJson(Map<String, dynamic> json) => _$CertificateItemFromJson(json);

@override final  String id;
@override final  String name;
// Tên chứng chỉ (e.g. Google Cloud Associate)
@override final  String issuer;
// Tổ chức cấp (e.g. Google, Coursera)
@override final  String? logoUrl;
// Logo tổ chức (Optional)
@override final  DateTime date;
// Ngày cấp
@override final  String? credentialUrl;
// Link xác thực
@override final  String? credentialId;
// ID chứng chỉ (Optional)
 final  List<String> _skills;
// ID chứng chỉ (Optional)
@override@JsonKey() List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}


/// Create a copy of CertificateItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateItemCopyWith<_CertificateItem> get copyWith => __$CertificateItemCopyWithImpl<_CertificateItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificateItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.date, date) || other.date == date)&&(identical(other.credentialUrl, credentialUrl) || other.credentialUrl == credentialUrl)&&(identical(other.credentialId, credentialId) || other.credentialId == credentialId)&&const DeepCollectionEquality().equals(other._skills, _skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,issuer,logoUrl,date,credentialUrl,credentialId,const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'CertificateItem(id: $id, name: $name, issuer: $issuer, logoUrl: $logoUrl, date: $date, credentialUrl: $credentialUrl, credentialId: $credentialId, skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$CertificateItemCopyWith<$Res> implements $CertificateItemCopyWith<$Res> {
  factory _$CertificateItemCopyWith(_CertificateItem value, $Res Function(_CertificateItem) _then) = __$CertificateItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String issuer, String? logoUrl, DateTime date, String? credentialUrl, String? credentialId, List<String> skills
});




}
/// @nodoc
class __$CertificateItemCopyWithImpl<$Res>
    implements _$CertificateItemCopyWith<$Res> {
  __$CertificateItemCopyWithImpl(this._self, this._then);

  final _CertificateItem _self;
  final $Res Function(_CertificateItem) _then;

/// Create a copy of CertificateItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? issuer = null,Object? logoUrl = freezed,Object? date = null,Object? credentialUrl = freezed,Object? credentialId = freezed,Object? skills = null,}) {
  return _then(_CertificateItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,credentialUrl: freezed == credentialUrl ? _self.credentialUrl : credentialUrl // ignore: cast_nullable_to_non_nullable
as String?,credentialId: freezed == credentialId ? _self.credentialId : credentialId // ignore: cast_nullable_to_non_nullable
as String?,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
