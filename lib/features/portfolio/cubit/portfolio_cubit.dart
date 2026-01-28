import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/portfolio/model/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/repositories/portfolio_repository.dart';
import '../../../core/services/exception_handler_service.dart';
import 'portfolio_state.dart';

@injectable
class PortfolioCubit extends Cubit<PortfolioState> {
  // VN: Dependency Injection đã được làm sạch. Chỉ inject Repo tổng.
  final IPortfolioRepository _portfolioRepo;
  final ExceptionHandlerService _exceptionHandler;

  PortfolioCubit(this._portfolioRepo, this._exceptionHandler)
    : super(PortfolioInitial());

  Future<void> loadPortfolio() async {
    emit(PortfolioLoading());
    try {
      // VN: Logic gom data (Future.wait) đã được đẩy xuống tầng Repository.
      // Cubit không cần biết chi tiết về việc lấy data từ đâu nữa.
      final fullData = await _portfolioRepo.getFullPortfolioData();

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
