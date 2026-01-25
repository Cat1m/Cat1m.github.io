import 'package:injectable/injectable.dart';
import '../models/project_item.dart';

abstract class IProjectRepository {
  Future<List<ProjectItem>> getProjects();
}

@LazySingleton(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  @override
  Future<List<ProjectItem>> getProjects() async {
    // Giả lập delay mạng
    await Future.delayed(const Duration(milliseconds: 800));

    return [
      // =======================================================================
      // 1. WORK PROJECTS (Dự án Công ty - Ưu tiên Business & Scale)
      // =======================================================================

      // Work 1: Fintech (Banking) - Thể hiện bảo mật & clean arch
      const ProjectItem.work(
        id: 'w1',
        title: 'MBanking Pro',
        tagline: 'Secure & Fast Digital Banking Super-App',
        description:
            'A comprehensive banking application serving millions of users. Features include QR Payment, Stock Trading, Saving Goals, and high-security biometric authentication. Optimized for performance and strict compliance with financial regulations.',
        bannerUrl: 'assets/projects/banking_banner.png', // Thay ảnh của bạn
        companyName: 'Fintech Holdings',
        role: 'Senior Lead Developer',
        techStack: ['Flutter', 'Clean Arch', 'gRPC', 'Security', 'CI/CD'],
        platforms: ['Android', 'iOS'],
        appStoreLink: 'https://apps.apple.com/app/id123456789',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=com.fintech.mbanking',
      ),

      // Work 2: BMS (IoT/Smart Building) - Thể hiện IoT & Offline-first
      const ProjectItem.work(
        id: 'w2',
        title: 'EcoBMS Manager',
        tagline: 'IoT Building Management System',
        description:
            'Enterprise solution for managing smart buildings. Integrates with thousands of IoT sensors via MQTT. Key features: Real-time monitoring, Offline-first architecture using SQLite, and remote device control.',
        bannerUrl: 'assets/projects/bms_banner.png',
        companyName: 'SmartHome Solutions',
        role: 'Mobile Tech Lead',
        techStack: ['Flutter', 'MQTT', 'SQLite', 'Native Plugins', 'Socket.IO'],
        platforms: ['Android', 'iOS', 'Tablet'],
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=com.smart.bms',
      ),

      // =======================================================================
      // 2. PERSONAL PROJECTS (Dự án Cá nhân - Show kỹ năng & Sở thích)
      // =======================================================================

      // Personal 1: Portfolio (Web)
      const ProjectItem.personal(
        id: 'p1',
        title: 'Dev Portfolio',
        tagline: 'Interactive Resume & Showcase',
        description:
            'My personal branding website built entirely with Flutter Web. Demonstrates responsive design, clean code architecture, and interactive animations using Rive and Lottie.',
        bannerUrl: 'assets/projects/portfolio_banner.png',
        techStack: ['Flutter Web', 'Bloc', 'Responsive', 'GitHub Actions'],
        platforms: ['Web'],
        webLink: 'https://cat1m.github.io',
        githubLink: 'https://github.com/Cat1m/portfolio',
      ),

      // Personal 2: T-Gym (Fitness) - Thể hiện sở thích Gym
      const ProjectItem.personal(
        id: 'p2',
        title: 'T-Gym Assistant',
        tagline: 'Workout Tracker & Nutrition Planner',
        description:
            'A companion app for gym enthusiasts. Tracks workout logs, calculates 1RM, and manages nutrition macros (Casein, Protein). Features local database sync and custom chart visualizations.',
        bannerUrl: 'assets/projects/gym_banner.png',
        techStack: ['Flutter', 'Hive (Local DB)', 'Fl_Chart', 'Provider'],
        platforms: ['Android', 'iOS'],
        githubLink: 'https://github.com/Cat1m/t-gym',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=com.cat1m.gym',
      ),

      // Personal 3: Music Player (UI/UX) - Thể hiện UI đẹp
      const ProjectItem.personal(
        id: 'p3',
        title: 'Melodify Player',
        tagline: 'Neumorphism Music Experience',
        description:
            'An experiment with Neumorphism design style in Flutter. Custom audio service implementation for background playback and lyric synchronization.',
        bannerUrl: 'assets/projects/music_banner.png',
        techStack: ['Flutter', 'AudioService', 'JustAudio', 'Neumorphism'],
        platforms: ['Android', 'iOS'],
        githubLink: 'https://github.com/Cat1m/melodify',
      ),

      // Personal 4: PC Monitor (Desktop) - Thể hiện khả năng làm Desktop App
      const ProjectItem.personal(
        id: 'p4',
        title: 'Rig Monitor',
        tagline: 'PC Hardware Stats Dashboard',
        description:
            'Desktop application to monitor CPU, GPU, and RAM usage in real-time. Uses FFI (Foreign Function Interface) to call native Windows/macOS APIs.',
        bannerUrl: 'assets/projects/monitor_banner.png',
        techStack: ['Flutter Desktop', 'Dart FFI', 'Win32 API', 'System Tray'],
        platforms: ['Windows', 'macOS'],
        githubLink: 'https://github.com/Cat1m/rig-monitor',
      ),

      // Personal 5: E-Commerce UI Kit - Thể hiện code library/package
      const ProjectItem.personal(
        id: 'p5',
        title: 'Flutter Shop Kit',
        tagline: 'Open Source E-Commerce UI Library',
        description:
            'A complete UI Kit for e-commerce apps containing 20+ screens (Home, Detail, Cart, Checkout). Focuses on reusable widgets and pixel-perfect design.',
        bannerUrl: 'assets/projects/shop_banner.png',
        techStack: ['Flutter', 'UI Kit', 'Storybook', 'GetX'],
        platforms: ['Android', 'iOS', 'Web'],
        githubLink: 'https://github.com/Cat1m/flutter-shop-kit',
        webLink: 'https://cat1m.github.io/shop-kit-demo',
      ),

      // Personal 6: Chat App (Realtime) - Thể hiện kỹ năng Backend/Firebase
      const ProjectItem.personal(
        id: 'p6',
        title: 'DevChat',
        tagline: 'Real-time Developer Community',
        description:
            'Real-time messaging app with features like group chat, file sharing, and code syntax highlighting. Backend powered by Firebase Firestore and Cloud Functions.',
        bannerUrl: 'assets/projects/chat_banner.png',
        techStack: ['Flutter', 'Firebase', 'Riverpod', 'Cloud Functions'],
        platforms: ['Android', 'iOS'],
        githubLink: 'https://github.com/Cat1m/dev-chat',
      ),
    ];
  }
}
