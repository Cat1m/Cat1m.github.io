import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';

abstract class IEducationRepository {
  Future<List<EducationItem>> getEducations();
}

@LazySingleton(as: IEducationRepository)
class EducationRepository implements IEducationRepository {
  @override
  Future<List<EducationItem>> getEducations() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      EducationItem(
        id: '1',
        school: 'Ho Chi Minh City University of Technology (HUTECH)',
        degree: 'Bachelor of Software Engineering',
        startTime: DateTime(2017, 9),
        endTime: DateTime(2021, 6),
        logoUrl: 'assets/logos/hutech.png', // Nhớ thêm ảnh
        achievements: ['GPA: 3.5/4.0', 'Best Capstone Project Award 2021'],
      ),
    ];
  }
}
