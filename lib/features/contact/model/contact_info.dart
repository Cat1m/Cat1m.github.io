import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info.freezed.dart';
part 'contact_info.g.dart';

@freezed
abstract class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    required String title,
    required String description,
    required String email,
    required String phone,
    required String location,
    required String cvUrl,

    @Default(true) bool isOpenToWork,
    @Default("I usually reply within 24 hours") String responseTime,

    // VN: Thêm trường này để list ra: Remote, Freelance, Full-time...
    @Default([]) List<String> services,

    String? linkedinUrl,
    String? githubUrl,
    String? mediumUrl,
    String? facebookUrl,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);
}
