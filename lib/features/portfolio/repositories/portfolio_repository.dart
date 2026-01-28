import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';
import 'package:my_portfolio/features/about/user_profile_repository.dart';
import 'package:my_portfolio/features/blogs/blog_repository.dart';
import 'package:my_portfolio/features/blogs/model/blog_item.dart';
import 'package:my_portfolio/features/certificates/certificate_repository.dart';
import 'package:my_portfolio/features/certificates/education_repository.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';
import 'package:my_portfolio/features/experience/experience_repository.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';
import 'package:my_portfolio/features/portfolio/model/portfolio_models.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:my_portfolio/features/projects/repositories/project_repository.dart';
import 'package:my_portfolio/features/skills/models/skill_item.dart';
import 'package:my_portfolio/features/skills/skill_repository.dart';

// ... (Giữ nguyên import các model con khác)

abstract interface class IPortfolioRepository {
  // VN: Hàm duy nhất để lấy full data cho trang chủ
  Future<PortfolioData> getFullPortfolioData();
}

@LazySingleton(as: IPortfolioRepository)
class PortfolioRepository implements IPortfolioRepository {
  // VN: Inject UserProfileRepo mới và các repo con khác
  final IUserProfileRepository _userRepo;
  final IProjectRepository _projectRepo;
  final IExperienceRepository _experienceRepo;
  final ISkillRepository _skillRepo;
  final IEducationRepository _educationRepo;
  final ICertificateRepository _certificateRepo;
  final IBlogRepository _blogRepo;

  PortfolioRepository(
    this._userRepo,
    this._projectRepo,
    this._experienceRepo,
    this._skillRepo,
    this._educationRepo,
    this._certificateRepo,
    this._blogRepo,
  );

  @override
  Future<PortfolioData> getFullPortfolioData() async {
    // VN: Thực thi song song tất cả các tác vụ lấy dữ liệu để tối ưu thời gian chờ
    final results = await Future.wait([
      _userRepo.getUserProfile(), // index 0
      _projectRepo.getProjects(), // index 1
      _experienceRepo.getExperiences(), // index 2
      _skillRepo.getSkills(), // index 3
      _educationRepo.getEducations(), // index 4
      _certificateRepo.getCertificates(), // index 5
      _blogRepo.getBlogs(), // index 6
    ]);

    // VN: Map kết quả trả về vào Model tổng (PortfolioData)
    return PortfolioData(
      user: results[0] as UserProfile,
      projects: results[1] as List<ProjectItem>,
      experiences: results[2] as List<ExperienceItem>,
      skills: results[3] as List<SkillItem>,
      educations: results[4] as List<EducationItem>,
      certificates: results[5] as List<CertificateItem>,
      blogs: results[6] as List<BlogItem>,
    );
  }
}
