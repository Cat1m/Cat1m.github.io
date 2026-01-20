import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../core/di/injection.dart';
import '../bloc/portfolio_cubit.dart';
import '../bloc/portfolio_state.dart';
import 'widgets/portfolio_header.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PortfolioCubit>()..loadPortfolio(),
      child: const PortfolioView(),
    );
  }
}

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    // Lắng nghe scroll để update Active Section trên Header (Optional UX)
    _itemPositionsListener.itemPositions.addListener(_onScrollPositionChanged);
  }

  @override
  void dispose() {
    _itemPositionsListener.itemPositions.removeListener(
      _onScrollPositionChanged,
    );
    super.dispose();
  }

  void _onScrollPositionChanged() {
    final positions = _itemPositionsListener.itemPositions.value;
    if (positions.isNotEmpty) {
      // Logic đơn giản: Lấy item đầu tiên đang hiển thị
      final firstIndex = positions.first.index;
      final section = PortfolioSection.values[firstIndex];
      context.read<PortfolioCubit>().updateActiveSection(section);
    }
  }

  void _scrollToSection(int index) {
    _itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PortfolioCubit, PortfolioState>(
        builder: (context, state) {
          return switch (state) {
            PortfolioLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            PortfolioError() => const Center(
              child: Text("Failed to load portfolio"),
            ),
            PortfolioLoaded(data: var data, activeSection: var activeSection) =>
              Column(
                children: [
                  // 1. Sticky Header
                  PortfolioHeader(
                    activeSection: activeSection,
                    onMenuClick: (section) => _scrollToSection(section.index),
                  ),

                  // 2. Scrollable Body
                  Expanded(
                    child: ScrollablePositionedList.builder(
                      itemCount: PortfolioSection.values.length,
                      itemScrollController: _itemScrollController,
                      itemPositionsListener: _itemPositionsListener,
                      itemBuilder: (context, index) {
                        final section = PortfolioSection.values[index];
                        // Placeholder cho các Section Widget
                        return Container(
                          height: 600, // Chiều cao giả lập
                          alignment: Alignment.center,
                          color: index.isEven ? Colors.grey[200] : Colors.white,
                          child: Text(
                            "${section.title} Section\n(Data: ${data.profile.name})",
                            style: Theme.of(context).textTheme.headlineLarge,
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}
