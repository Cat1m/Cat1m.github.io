import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_item.freezed.dart';
part 'blog_item.g.dart';

@freezed
abstract class BlogItem with _$BlogItem {
  const factory BlogItem({
    required String id,
    required String title,
    required String description, // Đoạn intro ngắn (Teaser)
    required String link, // Link bài viết trên Medium
    required String coverUrl, // Ảnh cover bài viết
    required DateTime publishedDate,
    required String
    readTime, // Ví dụ: "5 min read" (Rất quan trọng với UX Medium)
    @Default([]) List<String> tags, // Ví dụ: ['Flutter', 'Performance']
  }) = _BlogItem;

  factory BlogItem.fromJson(Map<String, dynamic> json) =>
      _$BlogItemFromJson(json);
}
