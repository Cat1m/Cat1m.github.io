import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// ... Các imports cũ giữ nguyên
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:my_portfolio/features/about/profile_repository.dart';
import 'package:my_portfolio/features/certificates/certificate_repository.dart';
import 'package:my_portfolio/features/certificates/education_repository.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';
import 'package:my_portfolio/features/experience/experience_repository.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/repositories/portfolio_repository.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:my_portfolio/features/projects/repositories/project_repository.dart';
import 'package:my_portfolio/features/skills/models/skill_item.dart';
import 'package:my_portfolio/features/skills/skill_repository.dart';

import '../../../core/services/exception_handler_service.dart';
import 'portfolio_state.dart';

@injectable
class PortfolioCubit extends Cubit<PortfolioState> {
  final IPortfolioRepository _portfolioRepo;
  final IProfileRepository _profileRepo;
  final IProjectRepository _projectRepo;
  final IExperienceRepository _experienceRepo;
  final ISkillRepository _skillRepo;
  // VN: Inject thêm 2 Repo
  final IEducationRepository _educationRepo;
  final ICertificateRepository _certificateRepo;

  final ExceptionHandlerService _exceptionHandler;

  PortfolioCubit(
    this._portfolioRepo,
    this._profileRepo,
    this._projectRepo,
    this._experienceRepo,
    this._skillRepo,
    this._educationRepo, // Inject
    this._certificateRepo, // Inject
    this._exceptionHandler,
  ) : super(PortfolioInitial());

  Future<void> loadPortfolio() async {
    emit(PortfolioLoading());
    try {
      // VN: Gọi tất cả API song song (Tổng cộng 6 requests + 1 legacy)
      final results = await Future.wait([
        _profileRepo.getProfile(), // 0
        _projectRepo.getProjects(), // 1
        _experienceRepo.getExperiences(), // 2
        _skillRepo.getSkills(), // 3
        _educationRepo.getEducations(), // 4: Education
        _certificateRepo.getCertificates(), // 5: Certificates
        _portfolioRepo.getOtherData(), // 6: Legacy
      ]);

      final profile = results[0] as ProfileInfo;
      final projects = results[1] as List<ProjectItem>;
      final experiences = results[2] as List<ExperienceItem>;
      final skills = results[3] as List<SkillItem>;
      final educations = results[4] as List<EducationItem>; // Cast
      final certificates = results[5] as List<CertificateItem>; // Cast
      // final otherData = results[6] as Map<String, dynamic>;

      final fullData = PortfolioData(
        profile: profile,
        projects: projects,
        experiences: experiences,
        skills: skills,
        educations: educations, // Gán
        certificates: certificates, // Gán
      );

      emit(PortfolioLoaded(data: fullData));
    } catch (e, s) {
      _exceptionHandler.captureError(e, s);
      emit(PortfolioError(e.toString()));
    }
  }

  void updateActiveSection(PortfolioSection section) {
    final currentState = state;
    if (currentState is PortfolioLoaded) {
      if (currentState.activeSection != section) {
        emit(currentState.copyWith(activeSection: section));
      }
    }
  }
}
