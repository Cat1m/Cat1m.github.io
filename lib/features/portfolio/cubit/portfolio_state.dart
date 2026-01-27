import 'package:equatable/equatable.dart';
import 'package:my_portfolio/features/portfolio/model/portfolio_models.dart';

sealed class PortfolioState extends Equatable {
  const PortfolioState();
  @override
  List<Object?> get props => [];
}

final class PortfolioInitial extends PortfolioState {}

final class PortfolioLoading extends PortfolioState {}

final class PortfolioLoaded extends PortfolioState {
  final PortfolioData data;
  final PortfolioSection
  activeSection; // Section đang được highlight trên Header

  const PortfolioLoaded({
    required this.data,
    this.activeSection = PortfolioSection.about,
  });

  PortfolioLoaded copyWith({
    PortfolioData? data,
    PortfolioSection? activeSection,
  }) {
    return PortfolioLoaded(
      data: data ?? this.data,
      activeSection: activeSection ?? this.activeSection,
    );
  }

  @override
  List<Object?> get props => [data, activeSection];
}

final class PortfolioError extends PortfolioState {
  final String message;
  const PortfolioError(this.message);
  @override
  List<Object?> get props => [message];
}
