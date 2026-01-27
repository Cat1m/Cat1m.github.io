// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlogItem {

 String get id; String get title; String get description;// Đoạn intro ngắn (Teaser)
 String get link;// Link bài viết trên Medium
 String get coverUrl;// Ảnh cover bài viết
 DateTime get publishedDate; String get readTime;// Ví dụ: "5 min read" (Rất quan trọng với UX Medium)
 List<String> get tags;
/// Create a copy of BlogItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogItemCopyWith<BlogItem> get copyWith => _$BlogItemCopyWithImpl<BlogItem>(this as BlogItem, _$identity);

  /// Serializes this BlogItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.readTime, readTime) || other.readTime == readTime)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,link,coverUrl,publishedDate,readTime,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'BlogItem(id: $id, title: $title, description: $description, link: $link, coverUrl: $coverUrl, publishedDate: $publishedDate, readTime: $readTime, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $BlogItemCopyWith<$Res>  {
  factory $BlogItemCopyWith(BlogItem value, $Res Function(BlogItem) _then) = _$BlogItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String link, String coverUrl, DateTime publishedDate, String readTime, List<String> tags
});




}
/// @nodoc
class _$BlogItemCopyWithImpl<$Res>
    implements $BlogItemCopyWith<$Res> {
  _$BlogItemCopyWithImpl(this._self, this._then);

  final BlogItem _self;
  final $Res Function(BlogItem) _then;

/// Create a copy of BlogItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? link = null,Object? coverUrl = null,Object? publishedDate = null,Object? readTime = null,Object? tags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,coverUrl: null == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as DateTime,readTime: null == readTime ? _self.readTime : readTime // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BlogItem].
extension BlogItemPatterns on BlogItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlogItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlogItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlogItem value)  $default,){
final _that = this;
switch (_that) {
case _BlogItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlogItem value)?  $default,){
final _that = this;
switch (_that) {
case _BlogItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String link,  String coverUrl,  DateTime publishedDate,  String readTime,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlogItem() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.link,_that.coverUrl,_that.publishedDate,_that.readTime,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String link,  String coverUrl,  DateTime publishedDate,  String readTime,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _BlogItem():
return $default(_that.id,_that.title,_that.description,_that.link,_that.coverUrl,_that.publishedDate,_that.readTime,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String link,  String coverUrl,  DateTime publishedDate,  String readTime,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _BlogItem() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.link,_that.coverUrl,_that.publishedDate,_that.readTime,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlogItem implements BlogItem {
  const _BlogItem({required this.id, required this.title, required this.description, required this.link, required this.coverUrl, required this.publishedDate, required this.readTime, final  List<String> tags = const []}): _tags = tags;
  factory _BlogItem.fromJson(Map<String, dynamic> json) => _$BlogItemFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
// Đoạn intro ngắn (Teaser)
@override final  String link;
// Link bài viết trên Medium
@override final  String coverUrl;
// Ảnh cover bài viết
@override final  DateTime publishedDate;
@override final  String readTime;
// Ví dụ: "5 min read" (Rất quan trọng với UX Medium)
 final  List<String> _tags;
// Ví dụ: "5 min read" (Rất quan trọng với UX Medium)
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of BlogItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogItemCopyWith<_BlogItem> get copyWith => __$BlogItemCopyWithImpl<_BlogItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.readTime, readTime) || other.readTime == readTime)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,link,coverUrl,publishedDate,readTime,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'BlogItem(id: $id, title: $title, description: $description, link: $link, coverUrl: $coverUrl, publishedDate: $publishedDate, readTime: $readTime, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$BlogItemCopyWith<$Res> implements $BlogItemCopyWith<$Res> {
  factory _$BlogItemCopyWith(_BlogItem value, $Res Function(_BlogItem) _then) = __$BlogItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String link, String coverUrl, DateTime publishedDate, String readTime, List<String> tags
});




}
/// @nodoc
class __$BlogItemCopyWithImpl<$Res>
    implements _$BlogItemCopyWith<$Res> {
  __$BlogItemCopyWithImpl(this._self, this._then);

  final _BlogItem _self;
  final $Res Function(_BlogItem) _then;

/// Create a copy of BlogItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? link = null,Object? coverUrl = null,Object? publishedDate = null,Object? readTime = null,Object? tags = null,}) {
  return _then(_BlogItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,coverUrl: null == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String,publishedDate: null == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as DateTime,readTime: null == readTime ? _self.readTime : readTime // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
