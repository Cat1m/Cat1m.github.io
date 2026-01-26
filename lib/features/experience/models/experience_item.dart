import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_item.freezed.dart';
part 'experience_item.g.dart';

@freezed
abstract class ExperienceItem with _$ExperienceItem {
  const factory ExperienceItem({
    required String id,
    required String role, // Ví dụ: Senior Mobile Developer
    required String company, // Ví dụ: Tech Company A
    String? companyUrl, // Link tới web công ty (tăng uy tín)
    String? companyLogo, // Logo công ty
    // VN: Thay vì string "2020 - 2021", dùng DateTime để dễ sort
    required DateTime startTime,
    DateTime? endTime, // Null = Present (Hiện tại)

    required String location, // Ví dụ: Ho Chi Minh, Vietnam
    required String type, // Ví dụ: Full-time, Remote, Hybrid
    // VN: Đây là phần quan trọng nhất với HR
    // Dùng List<String> để hiển thị gạch đầu dòng
    required List<String> responsibilities,

    // VN: Tech stack cụ thể cho job này
    @Default([]) List<String> techStack,
  }) = _ExperienceItem;

  factory ExperienceItem.fromJson(Map<String, dynamic> json) =>
      _$ExperienceItemFromJson(json);
}
