import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/di/injection.dart';
import 'package:my_portfolio/core/ui/extensions/context_extension.dart';
import 'package:my_portfolio/features/about/about_section.dart';
import 'package:my_portfolio/features/blogs/blogs_section.dart';
import 'package:my_portfolio/features/certificates/certificates_section.dart';
import 'package:my_portfolio/features/about/contact_section.dart';
import 'package:my_portfolio/features/experience/experience_section.dart';
import 'package:my_portfolio/features/portfolio/cubit/portfolio_cubit.dart';
import 'package:my_portfolio/features/portfolio/cubit/portfolio_state.dart';
import 'package:my_portfolio/features/portfolio/model/portfolio_models.dart';
import 'package:my_portfolio/features/portfolio/ui/widgets/portfolio_background.dart';
import 'package:my_portfolio/features/portfolio/ui/widgets/portfolio_header.dart';
import 'package:my_portfolio/features/projects/projects_section.dart';
import 'package:my_portfolio/features/skills/skills_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
    if (positions.isEmpty) return;

    int maxVisibleIndex = -1;
    double maxVisibleFraction = 0.0;

    for (var item in positions) {
      final top = item.itemLeadingEdge < 0 ? 0.0 : item.itemLeadingEdge;
      final bottom = item.itemTrailingEdge > 1 ? 1.0 : item.itemTrailingEdge;
      final visibleFraction = bottom - top;

      if (visibleFraction > maxVisibleFraction) {
        maxVisibleFraction = visibleFraction;
        maxVisibleIndex = item.index;
      }
    }

    final lastItem = positions.lastWhere(
      (item) => item.index == PortfolioSection.values.length - 1,
      orElse: () => positions.first,
    );

    if (lastItem.index == PortfolioSection.values.length - 1 &&
        lastItem.itemTrailingEdge <= 1.05) {
      maxVisibleIndex = lastItem.index;
    }

    if (maxVisibleIndex != -1) {
      final section = PortfolioSection.values[maxVisibleIndex];
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

  Widget _buildSection(PortfolioSection section, PortfolioData data) {
    switch (section) {
      case PortfolioSection.about:
        // VN: Cập nhật truyền UserProfile
        return AboutSection(profile: data.user);

      case PortfolioSection.projects:
        return ProjectsSection(projects: data.projects);

      case PortfolioSection.experience:
        return ExperienceSection(experiences: data.experiences);

      case PortfolioSection.skills:
        return SkillsSection(skills: data.skills);

      case PortfolioSection.certificates:
        return CertificatesSection(
          educations: data.educations,
          certificates: data.certificates,
        );

      case PortfolioSection.blogs:
        return BlogsSection(blogs: data.blogs);

      case PortfolioSection.contact:
        // VN: Cập nhật truyền UserProfile
        return ContactSection(user: data.user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // VN: Quan trọng! Scaffold phải trong suốt để thấy background nếu cần
      backgroundColor: Colors.transparent,
      body: BlocBuilder<PortfolioCubit, PortfolioState>(
        builder: (context, state) {
          return switch (state) {
            PortfolioLoading() => Center(
              child: Lottie.asset(
                'assets/animations/Loading.json', // Nhớ dùng dấu gạch chéo '/' chuẩn Flutter
                width: 200, // Giới hạn kích thước để không quá to
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            PortfolioError() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/animations/error_404.json', // File .lottie
                    width: 300, // Kích thước to rõ
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Oops! Something went wrong.",
                    style: context.text.h3.copyWith(
                      color: context.colors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Please try again later.",
                    style: context.text.body1.copyWith(
                      color: context.colors.textSecondary.withOpacity(0.6),
                    ),
                  ),
                  // Optional: Thêm nút Retry nếu muốn
                ],
              ),
            ),
            PortfolioLoaded(data: var data, activeSection: var activeSection) =>
              Stack(
                children: [
                  // --- LỚP 1: BACKGROUND DÙNG CHUNG ---
                  // Nó nằm cố định (Fixed), nội dung sẽ trôi qua nó
                  const Positioned.fill(child: PortfolioBackground()),

                  // --- LỚP 2: SCROLLABLE CONTENT ---
                  Positioned.fill(
                    child: ScrollablePositionedList.builder(
                      itemCount: PortfolioSection.values.length,
                      itemScrollController: _itemScrollController,
                      itemPositionsListener: _itemPositionsListener,
                      itemBuilder: (context, index) {
                        return _buildSection(
                          PortfolioSection.values[index],
                          data,
                        );
                      },
                    ),
                  ),

                  // --- LỚP 3: HEADER ---
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: PortfolioHeader(
                      activeSection: activeSection,
                      onMenuClick: (section) => _scrollToSection(section.index),
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
