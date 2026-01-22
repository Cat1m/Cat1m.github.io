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
      avatarUrl: "assets/images/avatar.png", // Nhớ tạo folder assets/images
      location: "Ho Chi Minh City, Vietnam",
      email: "contact@yourname.com",
      isOpenToWork: true,
      githubUrl: "https://github.com/yourusername",
      linkedinUrl: "https://linkedin.com/in/yourusername",
      cvLink: "https://your-cv-link.com",
    );
  }
}
