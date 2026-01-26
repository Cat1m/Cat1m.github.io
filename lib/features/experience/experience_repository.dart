import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';

abstract class IExperienceRepository {
  Future<List<ExperienceItem>> getExperiences();
}

@LazySingleton(as: IExperienceRepository)
class ExperienceRepository implements IExperienceRepository {
  @override
  Future<List<ExperienceItem>> getExperiences() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      ExperienceItem(
        id: '1',
        role: 'Senior Mobile Developer',
        company: 'Global Fintech Corp',
        companyUrl: 'https://fintech-corp.example.com',
        // companyLogo: 'assets/logos/fintech.png', // Nhớ thêm ảnh
        startTime: DateTime(2023, 1), // Jan 2023
        endTime: null, // Present
        location: 'Ho Chi Minh City, Vietnam',
        type: 'Hybrid',
        responsibilities: [
          'Lead a team of 5 developers to build a Super App serving 1M+ users.',
          'Architected the app using Clean Architecture + Bloc pattern, improving maintainability by 40%.',
          'Optimized app performance, reducing startup time from 3s to 1.5s.',
          'Mentored junior developers and conducted code reviews.',
        ],
        techStack: ['Flutter', 'Dart', 'GraphQL', 'CI/CD', 'Unit Test'],
      ),
      ExperienceItem(
        id: '2',
        role: 'Mobile Developer',
        company: 'Smart Solutions Inc.',
        startTime: DateTime(2021, 5),
        endTime: DateTime(2022, 12),
        location: 'Da Nang, Vietnam',
        type: 'Remote',
        responsibilities: [
          'Developed and maintained 3 Flutter applications for healthcare clients.',
          'Integrated native SDKs (WebRTC, Maps) into Flutter via Platform Channels.',
          'Collaborated with UI/UX team to implement pixel-perfect designs.',
        ],
        techStack: ['Flutter', 'Firebase', 'Google Maps API', 'Provider'],
      ),
      ExperienceItem(
        id: '3',
        role: 'Mobile Developer',
        company: 'Smart Solutions Inc.',
        startTime: DateTime(2020, 5),
        endTime: DateTime(2021, 12),
        location: 'Da Nang, Vietnam',
        type: 'Remote',
        responsibilities: [
          'Developed and maintained 3 Flutter applications for healthcare clients.',
          'Integrated native SDKs (WebRTC, Maps) into Flutter via Platform Channels.',
          'Collaborated with UI/UX team to implement pixel-perfect designs.',
        ],
        techStack: ['Flutter', 'Firebase', 'Google Maps API', 'Provider'],
      ),
    ];
  }
}
