// file: features/about/models/user_profile.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    // --- Identity Section (Từ Profile cũ) ---
    required String name,
    required String jobTitle, // map từ 'title' bên profile
    required String tagline,
    required String bio, // map từ 'summary'
    required String avatarUrl,

    // --- Contact & Work Section (Từ Contact cũ) ---
    required String location,
    required String email,
    required String phone,
    required String cvUrl,

    @Default(true) bool isOpenToWork,
    @Default("I usually reply within 24 hours") String responseTime,

    // VN: Câu chào mời hợp tác (map từ title bên contact cũ)
    @Default("Let's build something amazing together!") String contactHeading,
    // VN: Mô tả chi tiết về tình trạng open to work
    required String contactDescription,

    // VN: Các dịch vụ cung cấp (Remote, Freelance...)
    @Default([]) List<String> services,
    @Default([]) List<String> hobbies,

    // --- Social Links ---
    String? linkedinUrl,
    String? githubUrl,
    String? mediumUrl,
    String? facebookUrl,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
