// file: features/about/user_profile_repository.dart
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';

abstract interface class IUserProfileRepository {
  Future<UserProfile> getUserProfile();
}

@LazySingleton(as: IUserProfileRepository)
class UserProfileRepository implements IUserProfileRepository {
  @override
  Future<UserProfile> getUserProfile() async {
    await Future.delayed(const Duration(milliseconds: 400));

    return const UserProfile(
      // --- Identity ---
      name: "Lê Minh Chiến",
      jobTitle: "Mobile Developer",
      tagline:
          "Flutter Expert | Turning Complex Business Logic into Elegant Mobile Apps",
      bio:
          "With a unique background in IT Operations & ERP management, I don't just write code—I build solutions that solve real business problems.",
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

      // --- NEW: HOBBIES ADDED HERE ---
      hobbies: [
        "Detective Novels", // Trinh thám
        "Board Games", // Boardgame
        "Coffee Lover", // Thích cafe
        "Walking", // Đi bộ
        "Music", // Nghe nhạc
      ],

      // --- Social ---
      linkedinUrl: "https://www.linkedin.com/in/cat1m/",
      githubUrl: "https://github.com/Cat1m",
      mediumUrl: "https://medium.com/@chien120697",
    );
  }
}
