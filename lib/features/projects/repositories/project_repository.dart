import 'package:injectable/injectable.dart';
import '../models/project_item.dart';

abstract class IProjectRepository {
  Future<List<ProjectItem>> getProjects();
}

@LazySingleton(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  @override
  Future<List<ProjectItem>> getProjects() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      // 1. Dự án Công Ty (Banking App) - Không có Source Code, có Store Link
      ProjectItem(
        id: '1',
        title: 'Smart Banking App',
        tagline: 'Next-gen mobile banking experience',
        description:
            'A super-app for banking with features like QR Payment, Saving Goals, and Stock Trading. Handled high-security standards and real-time transactions.',
        bannerUrl: 'assets/projects/banking_banner.png', // Nhớ thêm ảnh
        isPersonalProject: false,
        companyName: 'Fintech Corp',
        role: 'Senior Mobile Developer',
        techStack: ['Flutter', 'Native Android/iOS', 'Grpc', 'Clean Arch'],
        platforms: ['Android', 'iOS'],
        appStoreLink: 'https://apps.apple.com/...',
        googlePlayLink: 'https://play.google.com/...',
        // githubLink: null -> Không hiển thị nút GitHub
      ),

      // 2. Dự án Cá Nhân (Portfolio) - Có Source Code, có Web Link
      ProjectItem(
        id: '2',
        title: 'My Portfolio',
        tagline: 'Personal branding website built with Flutter Web',
        description:
            'A showcase of my skills and projects. Implements Clean Architecture, Responsive Design, and interactive animations using Lottie.',
        bannerUrl: 'assets/projects/portfolio_banner.png',
        isPersonalProject: true,
        role: 'Owner & Developer',
        techStack: ['Flutter Web', 'Bloc', 'Freezed', 'GetIt'],
        platforms: ['Web'],
        webLink: 'https://cat1m.github.io',
        githubLink: 'https://github.com/Cat1m/portfolio',
      ),

      // 3. Dự án Công ty cũ (BMS)
      ProjectItem(
        id: '3',
        title: 'BMS Manager',
        tagline: 'Building Management System for large complexities',
        description:
            'Managed IoT devices integration for smart buildings. Optimized battery usage and offline-first data synchronization.',
        bannerUrl: 'assets/projects/bms_banner.png',
        isPersonalProject: false,
        companyName: 'SmartHome Inc',
        role: 'Mobile Developer',
        techStack: ['Flutter', 'MQTT', 'SQLite', 'BloC'],
        platforms: ['Android', 'iOS'],
        googlePlayLink: 'https://play.google.com/...',
      ),
    ];
  }
}
