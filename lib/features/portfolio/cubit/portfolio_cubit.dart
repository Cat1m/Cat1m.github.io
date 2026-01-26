import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:my_portfolio/features/about/profile_repository.dart';
import 'package:my_portfolio/features/experience/experience_repository.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/repositories/portfolio_repository.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:my_portfolio/features/projects/repositories/project_repository.dart';
import '../../../core/services/exception_handler_service.dart';

import 'portfolio_state.dart';

@injectable
class PortfolioCubit extends Cubit<PortfolioState> {
  // Inject cả 2 Repository vào
  final IPortfolioRepository _portfolioRepo;
  final IProfileRepository _profileRepo;
  final IProjectRepository _projectRepo;
  final IExperienceRepository _experienceRepo;
  final ExceptionHandlerService _exceptionHandler;

  PortfolioCubit(
    this._portfolioRepo,
    this._profileRepo,
    this._projectRepo,
    this._experienceRepo,
    this._exceptionHandler,
  ) : super(PortfolioInitial());

  Future<void> loadPortfolio() async {
    emit(PortfolioLoading());
    try {
      // VN: Gọi song song 2 API để tiết kiệm thời gian
      final results = await Future.wait([
        _profileRepo.getProfile(),
        _projectRepo.getProjects(),
        _experienceRepo.getExperiences(),
        _portfolioRepo.getOtherData(),
      ]);

      final profile = results[0] as ProfileInfo;
      final projects = results[1] as List<ProjectItem>;
      final experiences = results[2] as List<ExperienceItem>;
      final otherData = results[3] as Map<String, dynamic>;

      // Ghép data lại vào Model tổng
      final fullData = PortfolioData(
        profile: profile,
        projects: projects,
        experiences: experiences, // Gán vào data tổng
        skills: otherData['skills'] as List<SkillItem>,
      );

      emit(PortfolioLoaded(data: fullData));
    } catch (e, s) {
      _exceptionHandler.captureError(e, s);
      emit(PortfolioError(e.toString()));
    }
  }

  // Hàm update section khi user scroll hoặc click menu
  void updateActiveSection(PortfolioSection section) {
    final currentState = state;
    if (currentState is PortfolioLoaded) {
      if (currentState.activeSection != section) {
        emit(currentState.copyWith(activeSection: section));
      }
    }
  }
}
