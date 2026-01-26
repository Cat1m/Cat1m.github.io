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

      // Work 1: Hong Hung Hospital - Nhấn mạnh tính ổn định & y tế (Healthcare)
      const ProjectItem.work(
        id: 'w1',
        title: 'Hong Hung Hospital',
        tagline:
            'An app for tracking and scheduling medical appointments at Hong Hung Hospital',
        description:
            'Architected and developed the complete mobile ecosystem for Hong Hung Hospital. Features include Online Appointment Scheduling, Digital Health Records, and Real-time Notifications. Collaborated directly on .NET Core APIs and SQL optimization to ensure secure, high-performance data handling for patient records.',
        bannerUrl: 'assets/projects/banking_banner.png', // Nhớ thay ảnh
        companyName: 'HUNG DUY GROUP',
        role: 'Mobile Developer', // Nâng role lên Senior vì bạn cân cả project
        // Thể hiện tech stack sâu: Bloc (Architecture), .NET/SQL (Backend knowledge)
        techStack: [
          'Flutter',
          'Bloc',
          '.NET Core',
          'SQL Server',
          'FCM',
          'Freezed',
        ],
        platforms: ['Android', 'iOS'],
        appStoreLink:
            'https://apps.apple.com/us/app/bệnh-viện-hồng-hưng/id6499193586',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=com.hungduy.honghunghospitalapp&pcampaignid=web_share',
      ),

      // Work 2: BMS/Cana - Nhấn mạnh kỹ thuật khó (IoT, MQTT, Offline-first)
      const ProjectItem.work(
        id: 'w2',
        title: 'Cana Hospitality',
        tagline: 'News and services tracking app of Cana Entertainment Center',
        description:
            'A comprehensive hospitality and smart building management solution. Engineered the Offline-first architecture using SQLite for uninterrupted operations and integrated IoT devices via MQTT for real-time control. Handled full mobile implementation and extended backend endpoints (.NET) to support complex logic.',
        bannerUrl: 'assets/projects/bms_banner.png', // Nhớ thay ảnh
        companyName: 'HUNG DUY GROUP',
        role: 'Mobile Developer',
        // Thêm MQTT và SQLite để nổi bật tính chất IoT/Offline-first
        techStack: [
          'Flutter',
          'MQTT',
          'SQLite',
          '.NET Core',
          'IoT',
          'Smart Building',
        ],
        platforms: ['Android', 'iOS'],
        appStoreLink:
            'https://apps.apple.com/us/app/cana-hospitality/id6752832098',
        googlePlayLink:
            'https://play.google.com/store/apps/details?id=hungduy.com.vn.hungduy_service',
      ),

      // =======================================================================
      // 2. PERSONAL PROJECTS (Dự án Cá nhân - Show kỹ năng & Sở thích)
      // =======================================================================

      // Personal 1: EMV QR Builder - Highlight: Library Author, Deep Tech
      const ProjectItem.personal(
        id: 'p_lib_1',
        title: 'EMV QR Builder (Dart SDK)',
        tagline:
            'Pure Dart library for generating EMVCo & VietQR payment codes',
        description:
            'An open-source Dart library (100% test coverage) for generating EMVCo-compliant payment QRs. Specialized for VietQR (NapAS 247) with support for both Personal and Business transfer standards. Designed with Clean Architecture, ensuring zero UI dependencies for use on Server, Web, and Mobile. Implements complex TLV formatting and CRC16 checksum algorithms.',
        // Bạn nên chụp ảnh màn hình trang pub.dev hoặc demo web làm banner
        bannerUrl: 'assets/projects/library_banner.png',
        techStack: [
          'Dart SDK',
          'Open Source',
          'Unit Testing',
          'Bit Manipulation', // Thể hiện việc xử lý bit/byte
          'Clean Arch',
          'CI/CD',
        ],
        // Library chạy được trên mọi nền tảng
        platforms: ['Android', 'iOS', 'Web', 'Server', 'Windows', 'MacOS'],
        // Link demo web bạn đã cung cấp
        webLink: 'https://genqr-catim.vercel.app',
        // Link trỏ về Pub.dev hoặc Github repo của library
        githubLink: 'https://github.com/Cat1m/emv_qr_builder',
      ),

      // Personal 2: Nook In - Thể hiện khả năng xử lý Audio & Web
      const ProjectItem.personal(
        id: 'p_nook_in',
        title: 'Nook In',
        tagline: 'Ambient Sound Mixer & Pomodoro Focus Tool',
        description:
            'A productivity companion designed for deep work and relaxation. Features a custom multi-track audio mixer allowing users to blend ambient sounds (Rain, Fire, Waves) with independent volume controls. Built with a scalable architecture (Bloc, Injectable) to ensure smooth performance on Web, with live video backgrounds and precise Pomodoro timer logic.',
        bannerUrl:
            'assets/projects/nook_in_banner.png', // Nhớ chụp màn hình web
        techStack: [
          'Flutter Web',
          'Just Audio', // Highlight khả năng xử lý âm thanh
          'Bloc & Cubit', // State management xịn
          'Freezed', // Immutable data
          'Injectable', // DI
          'Video Player',
        ],
        // Dù chưa release store nhưng code chạy được trên mobile thì cứ ghi vào
        platforms: ['Web', 'Android', 'iOS'],
        webLink: 'https://nook-in.web.app',
        githubLink: 'https://github.com/Cat1m/nook_in',
      ),

      // Personal 3: Architecture Base - Thể hiện Tư duy hệ thống & R&D
      const ProjectItem.personal(
        id: 'p_core_arch',
        title: 'Flutter x Rust Core Architecture',
        tagline: 'High-performance Boilerplate & R&D Lab',
        description:
            'A production-ready application skeleton designed for scalability and speed. Serves as my standardized base for new projects to reduce setup time. Features a hybrid architecture integrating Rust (via FFI) for heavy computation, strict Clean Architecture layers, and pre-built modules for Auth (Interceptors), PDF Generation, and Dynamic Theming.',
        // Bạn có thể chụp ảnh sơ đồ kiến trúc (Diagram) hoặc cấu trúc folder làm banner
        bannerUrl: 'assets/projects/architecture_banner.png',
        techStack: [
          'Flutter',
          'Rust (FRB)', // Điểm nhấn công nghệ: Flutter Rust Bridge
          'Clean Arch', // Tư duy tổ chức code
          'Dio & Retrofit', // Networking chuẩn chỉ
          'Bloc/Cubit', // State management
          'Injectable', // Dependency Injection
        ],
        // Project này hỗ trợ full nền tảng như trong file tree bạn gửi
        platforms: ['Android', 'iOS', 'Web', 'Windows', 'MacOS', 'Linux'],
        githubLink: 'https://github.com/Cat1m/flutter_clean_arch_demo',
      ),
    ];
  }
}
