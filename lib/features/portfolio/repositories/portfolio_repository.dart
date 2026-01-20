import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';

// Abstract class để dễ mock test sau này
abstract class IPortfolioRepository {
  Future<PortfolioData> getPortfolioData();
}

@LazySingleton(as: IPortfolioRepository)
class PortfolioRepository implements IPortfolioRepository {
  @override
  Future<PortfolioData> getPortfolioData() async {
    // Giả lập delay mạng
    await Future.delayed(const Duration(milliseconds: 500));

    // Mock Data (Sau này bạn sửa data thật ở đây)
    return const PortfolioData(
      profile: ProfileInfo(
        name: "Your Name",
        title: "Senior Flutter Developer",
        summary: "Passionate about creating beautiful mobile & web apps.",
        avatarUrl: "assets/avatar.png",
        cvLink: "https://your-cv-link.com",
      ),
      projects: [
        ProjectItem(
          title: "E-Commerce App",
          description: "A full-featured shopping app.",
          techStack: ["Flutter", "Bloc", "Firebase"],
        ),
        ProjectItem(
          title: "Portfolio Web",
          description: "This website!",
          techStack: ["Flutter Web", "Clean Arch"],
        ),
      ],
      experiences: [],
      skills: [],
    );
  }
}
