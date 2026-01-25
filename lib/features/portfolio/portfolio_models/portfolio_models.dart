import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';

part 'portfolio_models.freezed.dart';

// Enum định nghĩa các phần của trang web để dùng cho Scroll Logic
enum PortfolioSection {
  about(title: 'About Me'),
  projects(title: 'Projects'),
  experience(title: 'Work Experience'),
  skills(title: 'Skills'),
  certificates(title: 'Certificates'),
  blogs(title: 'Blogs'),
  contact(title: 'Contact');

  final String title;
  const PortfolioSection({required this.title});
}

// Data Model tổng hợp
@freezed
abstract class PortfolioData with _$PortfolioData {
  const factory PortfolioData({
    required ProfileInfo profile,
    required List<ProjectItem> projects,
    required List<ExperienceItem> experiences,
    required List<SkillItem> skills,
  }) = _PortfolioData;
}

// Bạn có thể thêm ExperienceItem, SkillItem tương tự...
@freezed
abstract class ExperienceItem with _$ExperienceItem {
  const factory ExperienceItem({
    required String role,
    required String company,
    required String duration,
  }) = _ExperienceItem;
}

@freezed
abstract class SkillItem with _$SkillItem {
  const factory SkillItem({required String name}) = _SkillItem;
}
