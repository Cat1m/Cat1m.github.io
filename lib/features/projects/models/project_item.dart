import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_item.freezed.dart';
part 'project_item.g.dart'; // Support JSON nếu cần

@freezed
abstract class ProjectItem with _$ProjectItem {
  const factory ProjectItem({
    required String id,
    required String title,
    required String tagline, // Câu mô tả ngắn gọn (Slogan)
    required String description, // Mô tả chi tiết (Challenges, Solutions)
    required String bannerUrl, // Ảnh cover của dự án

    @Default(false) bool isPersonalProject, // True: Cá nhân, False: Công ty
    String? companyName, // Tên công ty (nếu là project công ty)
    required String role, // Vai trò: Lead, Senior Dev, hay Solo

    required List<String> techStack, // Flutter, Firebase, Bloc...
    @Default([]) List<String> platforms, // iOS, Android, Web

    String? appStoreLink,
    String? googlePlayLink,
    String? webLink,
    String? githubLink, // Chỉ hiện nếu là Personal hoặc Open Source

    DateTime? startDate,
    DateTime? endDate,
  }) = _ProjectItem;

  factory ProjectItem.fromJson(Map<String, dynamic> json) =>
      _$ProjectItemFromJson(json);
}
