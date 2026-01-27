// features/experience/data/experience_repository.dart

import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';

abstract class IExperienceRepository {
  Future<List<ExperienceItem>> getExperiences();
}

@LazySingleton(as: IExperienceRepository)
class ExperienceRepository implements IExperienceRepository {
  // Trả về kinh nghiệm làm việc: Tập trung vào Hùng Duy, rebrand lại Tanos và loại bỏ Palazzo
  @override
  Future<List<ExperienceItem>> getExperiences() async {
    await Future.delayed(const Duration(milliseconds: 300));

    return [
      // 1. Hùng Duy Group - Quan trọng nhất, đưa lên đầu
      ExperienceItem(
        id: '1',
        role: 'Senior Mobile Developer (Flutter Lead)',
        company: 'Hung Duy Group',
        companyUrl: 'https://hungduy.vn', // Ví dụ
        // companyLogo: 'assets/logos/hungduy.png',
        startTime: DateTime(2023, 9),
        endTime: null, // Present
        location: 'Tay Ninh, Vietnam',
        type: 'On-site',
        responsibilities: [
          'Spearheaded the mobile ecosystem development for a multi-industry corporation (Manufacturing, Medical, Trading).',
          'Solely architected and delivered 5+ critical Flutter applications: Hospital Patient App, BMS (Building Management), HRM, and Distribution Sales.',
          'Developed backend services using .NET Core Web API & SQL Server, ensuring seamless synchronization with mobile clients.',
          'Optimized app performance and implemented strict architecture guidelines (Clean Arch, Bloc/Cubit) for maintainability.',
          'Digitized manual workflows for the Distribution & Warehouse departments, increasing operational efficiency.',
        ],
        techStack: [
          'Flutter',
          'Dart',
          '.NET Core',
          'SQL Server',
          'Bloc',
          'FCM',
          'CI/CD',
        ],
      ),

      // 2. Tanos - Rebrand từ "NV Kho/Cam" thành "Operations Specialist" để tận dụng kỹ năng Tech
      ExperienceItem(
        id: '2',
        role: 'IT Operations & Systems Specialist',
        company: 'Tanos',
        // companyUrl: '...',
        // companyLogo: 'assets/logos/tanos.png',
        startTime: DateTime(2019, 10), // Lấy mốc cuối 2019
        endTime: DateTime(2023, 4),
        location: 'Ho Chi Minh City, Vietnam',
        type: 'On-site',
        responsibilities: [
          'Managed and operated IT infrastructure, including surveillance systems and office hardware for the head office.',
          'Administrated the KiotViet ERP system for warehouse and logistics operations, ensuring data accuracy.',
          'Provided technical support (Helpdesk) and optimized internal workflows for the supply chain department.',
          'Gained deep insights into Inventory Management and Retail logic (applied later in software development).',
        ],
        techStack: [
          'System Administration',
          'KiotViet ERP',
          'Logistics Operations',
          'IT Helpdesk',
        ],
      ),
    ];
  }
}
