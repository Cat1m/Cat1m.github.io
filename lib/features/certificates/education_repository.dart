// features/certificates/data/education_repository.dart

import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';

abstract class IEducationRepository {
  Future<List<EducationItem>> getEducations();
}

@LazySingleton(as: IEducationRepository)
class EducationRepository implements IEducationRepository {
  // Trả về danh sách học vấn, ẩn điểm GPA thấp và ẩn năm bắt đầu để tránh lộ việc học 8 năm
  @override
  Future<List<EducationItem>> getEducations() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    return [
      EducationItem(
        id: '1',
        school: 'Van Hien University', // Tên tiếng Anh chuẩn của trường
        degree:
            'Engineer\'s Degree, Electronics and Communications Engineering',
        startTime: null, // Chiến thuật: Ẩn ngày bắt đầu
        endTime: DateTime(2023, 10), // Chỉ hiện ngày lấy bằng
        logoUrl: 'assets/images/vhu_logo.png',
        achievements: [
          '3rd Prize - Robot Sumo Competition (Hardware & Logic Programming)',
          'English Proficiency: CEFR Level B1',
          'Soft Skills Certificate',
        ],
      ),
    ];
  }
}
