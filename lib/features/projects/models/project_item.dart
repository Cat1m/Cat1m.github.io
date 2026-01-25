import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_item.freezed.dart';
part 'project_item.g.dart';

@freezed
sealed class ProjectItem with _$ProjectItem {
  // Common getters cho tất cả các loại project
  const ProjectItem._();

  // Getter chung để UI đỡ phải check type nếu chỉ cần hiện info cơ bản
  String get displayTitle =>
      map(personal: (value) => value.title, work: (value) => value.title);

  // 1. Model cho Dự án cá nhân (Personal/Open Source)
  // VN: Model dành riêng cho dự án cá nhân, bắt buộc có link GitHub
  const factory ProjectItem.personal({
    required String id,
    required String title,
    required String tagline,
    required String description,
    required String bannerUrl,
    required List<String> techStack,
    @Default([]) List<String> platforms,

    // Đặc thù Personal
    String? githubLink,
    String? webLink,
    String? appStoreLink,
    String? googlePlayLink,
  }) = PersonalProject;

  // 2. Model cho Dự án công ty (Work/Outsource)
  // VN: Model dự án công ty, bắt buộc có tên công ty và Role, không có GitHub
  const factory ProjectItem.work({
    required String id,
    required String title,
    required String tagline,
    required String description,
    required String bannerUrl,
    required List<String> techStack,
    @Default([]) List<String> platforms,

    // Đặc thù Work
    required String companyName,
    required String role, // e.g., Senior Mobile Dev
    String? appStoreLink,
    String? googlePlayLink,
  }) = WorkProject;

  factory ProjectItem.fromJson(Map<String, dynamic> json) =>
      _$ProjectItemFromJson(json);
}
