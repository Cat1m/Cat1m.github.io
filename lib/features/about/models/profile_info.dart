import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.freezed.dart';
part 'profile_info.g.dart';

@freezed
abstract class ProfileInfo with _$ProfileInfo {
  const factory ProfileInfo({
    required String name,
    required String title,
    required String tagline,
    required String summary,
    required String avatarUrl,
    required String location,
    required String email,

    // VN: Đã thêm lại field này
    required String cvLink,

    String? linkedinUrl,
    String? githubUrl,
    String? mediumUrl,

    @Default(true) bool isOpenToWork,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}
