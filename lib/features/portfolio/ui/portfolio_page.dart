import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/di/injection.dart';
import 'package:my_portfolio/features/about/about_section.dart';
import 'package:my_portfolio/features/blogs/blogs_section.dart';
import 'package:my_portfolio/features/certificates/certificates_section.dart';
import 'package:my_portfolio/features/about/contact_section.dart';
import 'package:my_portfolio/features/experience/experience_section.dart';
import 'package:my_portfolio/features/portfolio/cubit/portfolio_cubit.dart';
import 'package:my_portfolio/features/portfolio/cubit/portfolio_state.dart';
import 'package:my_portfolio/features/portfolio/model/portfolio_models.dart';
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
              Stack(
                children: [
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
