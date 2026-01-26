import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/about/about_section.dart';
import 'package:my_portfolio/features/blogs/blogs_section.dart';
import 'package:my_portfolio/features/certificates/certificates_section.dart';
import 'package:my_portfolio/features/contact/contact_section.dart';
import 'package:my_portfolio/features/experience/experience_section.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import 'package:my_portfolio/features/projects/projects_section.dart';
import 'package:my_portfolio/features/skills/skills_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../core/di/injection.dart';
import '../cubit/portfolio_cubit.dart';
import '../cubit/portfolio_state.dart';
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
    if (positions.isEmpty) return;

    // Biến để lưu section chiếm diện tích lớn nhất
    int maxVisibleIndex = -1;
    double maxVisibleFraction = 0.0;

    for (var item in positions) {
      // 1. Tính toán phần hiển thị trong viewport (từ 0.0 đến 1.0)
      // itemLeadingEdge: cạnh trên của item
      // itemTrailingEdge: cạnh dưới của item

      // Cắt phần nằm ngoài màn hình (nhỏ hơn 0 hoặc lớn hơn 1)
      final top = item.itemLeadingEdge < 0 ? 0.0 : item.itemLeadingEdge;
      final bottom = item.itemTrailingEdge > 1 ? 1.0 : item.itemTrailingEdge;

      // Tính độ cao thực tế đang hiển thị
      final visibleFraction = bottom - top;

      // 2. Tìm item có độ hiển thị lớn nhất
      if (visibleFraction > maxVisibleFraction) {
        maxVisibleFraction = visibleFraction;
        maxVisibleIndex = item.index;
      }
    }

    // 3. Xử lý trường hợp đặc biệt: Cuộn xuống tận cùng (Contact)
    // Đôi khi Contact quá ngắn, hiển thị full nhưng vẫn thua thằng ở trên về diện tích
    // Nên ta check thêm: Nếu item cuối cùng đã hiện trọn vẹn (trailingEdge <= 1) -> Chọn nó luôn
    final lastItem = positions.lastWhere(
      (item) => item.index == PortfolioSection.values.length - 1,
      orElse: () => positions.first, // Dummy fallback
    );

    // Nếu tìm thấy item cuối cùng và nó đã nằm trọn trong màn hình
    if (lastItem.index == PortfolioSection.values.length - 1 &&
        lastItem.itemTrailingEdge <= 1.05) {
      maxVisibleIndex = lastItem.index;
    }

    // 4. Update state nếu tìm thấy index hợp lệ
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
        return AboutSection(profile: data.profile);
      case PortfolioSection.projects:
        return ProjectsSection(projects: data.projects);
      case PortfolioSection.experience:
        return ExperienceSection(experiences: data.experiences);
      case PortfolioSection.skills:
        return SkillsSection(skills: data.skills);
      case PortfolioSection.certificates:
        return const CertificatesSection(); // Chưa có data model, tạm thời để trống
      case PortfolioSection.blogs:
        return const BlogsSection(); // Chưa có data model, tạm thời để trống
      case PortfolioSection.contact:
        return ContactSection(profile: data.profile);
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
              // VN: Đổi từ Column sang Stack
              Stack(
                children: [
                  // 1. CONTENT (Nằm dưới)
                  Positioned.fill(
                    child: ScrollablePositionedList.builder(
                      itemCount: PortfolioSection.values.length,
                      itemScrollController: _itemScrollController,
                      itemPositionsListener: _itemPositionsListener,
                      // VN: Thêm padding bottom để nội dung cuối không bị che nếu cần
                      padding: const EdgeInsets.only(bottom: 80),
                      itemBuilder: (context, index) {
                        return _buildSection(
                          PortfolioSection.values[index],
                          data,
                        );
                      },
                    ),
                  ),

                  // 2. HEADER (Nằm trên cùng - Floating)
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
