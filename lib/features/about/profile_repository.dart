import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';

abstract class IProfileRepository {
  Future<ProfileInfo> getProfile();
}

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  @override
  Future<ProfileInfo> getProfile() async {
    // Giả lập delay riêng cho profile (nhanh hơn các phần khác)
    await Future.delayed(const Duration(milliseconds: 300));

    return const ProfileInfo(
      name: "Lê Minh Chiến",
      title: "Senior Mobile Developer",
      tagline:
          "Crafting scalable mobile solutions with Flutter & Clean Architecture",
      summary: "Over 5 years of experience in mobile development...",
      avatarUrl: "images/avatar.jpg", // Nhớ tạo folder assets/images
      location: "Ho Chi Minh City, Vietnam",
      email: "chien120697@gmail.com",
      isOpenToWork: true,
      githubUrl: "https://github.com/Cat1m",
      linkedinUrl: "https://www.linkedin.com/in/cat1m/",
      cvLink:
          "https://drive.google.com/file/d/1bi40CXM_NlQjB8IbkHJ5lx4oG6317zb3/view?usp=sharing",
    );
  }
}
