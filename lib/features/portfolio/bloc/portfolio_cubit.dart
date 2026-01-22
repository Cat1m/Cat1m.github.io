import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:my_portfolio/features/about/profile_repository.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/repositories/portfolio_repository.dart';
import '../../../core/services/exception_handler_service.dart';

import 'portfolio_state.dart';

@injectable
class PortfolioCubit extends Cubit<PortfolioState> {
  // Inject cả 2 Repository vào
  final IPortfolioRepository _portfolioRepo;
  final IProfileRepository _profileRepo;
  final ExceptionHandlerService _exceptionHandler;

  PortfolioCubit(this._portfolioRepo, this._profileRepo, this._exceptionHandler)
    : super(PortfolioInitial());

  Future<void> loadPortfolio() async {
    emit(PortfolioLoading());
    try {
      // VN: Gọi song song 2 API để tiết kiệm thời gian
      final results = await Future.wait([
        _profileRepo.getProfile(),
        _portfolioRepo.getOtherData(),
      ]);

      final profile = results[0] as ProfileInfo;
      final otherData = results[1] as Map<String, dynamic>;

      // Ghép data lại vào Model tổng
      final fullData = PortfolioData(
        profile: profile,
        projects: otherData['projects'] as List<ProjectItem>,
        experiences: otherData['experiences'] as List<ExperienceItem>,
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
