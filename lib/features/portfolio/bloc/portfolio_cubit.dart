import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/repositories/portfolio_repository.dart';
import '../../../core/services/exception_handler_service.dart';

import 'portfolio_state.dart';

@injectable
class PortfolioCubit extends Cubit<PortfolioState> {
  final IPortfolioRepository _repository;
  final ExceptionHandlerService _exceptionHandler;

  PortfolioCubit(this._repository, this._exceptionHandler)
    : super(PortfolioInitial());

  Future<void> loadPortfolio() async {
    emit(PortfolioLoading());
    try {
      final data = await _repository.getPortfolioData();
      emit(PortfolioLoaded(data: data));
    } catch (e, s) {
      _exceptionHandler.captureError(e, s); // Bắn lỗi về Global Handler
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
