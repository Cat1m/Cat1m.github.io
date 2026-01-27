import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:my_portfolio/features/blogs/model/blog_item.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';
import 'package:my_portfolio/features/contact/model/contact_info.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:my_portfolio/features/skills/models/skill_item.dart';

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
    required List<EducationItem> educations,
    required List<CertificateItem> certificates,
    required List<BlogItem> blogs,
    required ContactInfo contact,
  }) = _PortfolioData;
}
