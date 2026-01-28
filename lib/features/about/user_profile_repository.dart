// file: features/about/user_profile_repository.dart
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';

abstract interface class IUserProfileRepository {
  // VN: Lấy toàn bộ thông tin định danh và liên hệ của User
  Future<UserProfile> getUserProfile();
}

@LazySingleton(as: IUserProfileRepository)
class UserProfileRepository implements IUserProfileRepository {
  @override
  Future<UserProfile> getUserProfile() async {
    // VN: Giả lập network delay tổng hợp
    await Future.delayed(const Duration(milliseconds: 400));

    return const UserProfile(
      // --- Identity ---
      name: "Lê Minh Chiến",
      jobTitle: "Senior Mobile Developer",
      tagline:
          "Crafting scalable mobile solutions with Flutter & Clean Architecture",
      bio: "Over 5 years of experience in mobile development...",
      avatarUrl: "assets/images/avatar.jpg",

      // --- Contact ---
      location: "Ho Chi Minh City, Vietnam (GMT+7)",
      email: "chien120697@gmail.com",
      phone: "(+84) 35 950 9251",
      cvUrl:
          "https://drive.google.com/file/d/1bi40CXM_NlQjB8IbkHJ5lx4oG6317zb3/view?usp=drive_link",

      isOpenToWork: true,
      contactHeading: "Let's build something amazing together!",
      contactDescription:
          "I am currently available for **Remote work** and **Freelance projects**. "
          "Whether you need a MVP built from scratch or a Senior developer to scale your team, "
          "I'm here to help.",

      services: [
        "Remote Work",
        "Freelance Project",
        "Mobile App Consultation",
        "Mentoring",
      ],

      // --- Social ---
      linkedinUrl: "https://www.linkedin.com/in/cat1m/",
      githubUrl: "https://github.com/Cat1m",
      mediumUrl: "https://medium.com/@chien120697",
    );
  }
}
