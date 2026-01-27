import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_item.freezed.dart';
part 'education_item.g.dart';

@freezed
abstract class EducationItem with _$EducationItem {
  const factory EducationItem({
    required String id,
    required String school, // Tên trường (e.g. HCM University of Technology)
    required String degree, // Bằng cấp (e.g. Bachelor of Software Engineering)
    required DateTime? startTime,
    required DateTime endTime,
    String? logoUrl, // Logo trường
    @Default([]) List<String> achievements, // Thành tích (GPA, Scholarship...)
  }) = _EducationItem;

  factory EducationItem.fromJson(Map<String, dynamic> json) =>
      _$EducationItemFromJson(json);
}
