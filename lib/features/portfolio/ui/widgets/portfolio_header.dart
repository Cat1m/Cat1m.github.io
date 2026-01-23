import 'dart:ui'; // Cần để dùng ImageFilter
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart'; // Import Lottie
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
import '../../../../core/ui/ui.dart';
import '../../../../features/app_core/bloc/app_core_cubit.dart';
import '../../../../features/app_core/bloc/app_core_state.dart';

class PortfolioHeader extends StatelessWidget {
  final PortfolioSection activeSection;
  final Function(PortfolioSection) onMenuClick;

  const PortfolioHeader({
    super.key,
    required this.activeSection,
    required this.onMenuClick,
  });

  @override
  Widget build(BuildContext context) {
    // VN: Thêm ClipRect và BackdropFilter để tạo hiệu ứng kính mờ (Blur) khi cuộn
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.s24,
          ), // Dùng Dimens
          decoration: BoxDecoration(
            // VN: Dùng màu từ context extension
            color: context.colors.background.withOpacity(0.85),
            border: Border(
              bottom: BorderSide(
                color: context.colors.border.withOpacity(
                  0.5,
                ), // Dùng màu border chuẩn
                width: 1,
              ),
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1100) {
                return _DesktopHeaderContent(
                  activeSection: activeSection,
                  onMenuClick: onMenuClick,
                );
              } else {
                return _MobileHeaderContent(
                  activeSection: activeSection,
                  onMenuClick: onMenuClick,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

// ---------------- DESKTOP CONTENT ----------------
class _DesktopHeaderContent extends StatelessWidget {
  final PortfolioSection activeSection;
  final Function(PortfolioSection) onMenuClick;

  const _DesktopHeaderContent({
    required this.activeSection,
    required this.onMenuClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "MyPortfolio",
          style: context.text.h2.copyWith(color: context.colors.primary),
        ),
        const Spacer(),

        // Menu Items Loop
        ...PortfolioSection.values.map((section) {
          final isActive = section == activeSection;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.s8),
            child: TextButton(
              onPressed: () => onMenuClick(section),
              style: TextButton.styleFrom(
                // Màu active theo Primary, màu thường theo TextSecondary
                foregroundColor: isActive
                    ? context.colors.primary
                    : context.colors.textSecondary,
              ),
              child: Text(
                section.title,
                style: isActive
                    ? context.text.button.copyWith(fontWeight: FontWeight.bold)
                    : context.text.body1, // Font thường
              ),
            ),
          );
        }),

        const SizedBox(width: 16),

        // --- ACTION AREA ---
        // VN: Thay thế Switch cũ bằng Lottie Button mới
        const _ThemeLottieButton(),

        const SizedBox(width: 8),

        // Language Dropdown
        const _LanguageDropdown(),
        const SizedBox(width: 16),

        // Resume Button
        AppButton(text: "CV", onPressed: () {}, isExpanded: false),
      ],
    );
  }
}

// ---------------- MOBILE CONTENT ----------------
class _MobileHeaderContent extends StatelessWidget {
  final PortfolioSection activeSection;
  final Function(PortfolioSection) onMenuClick;

  const _MobileHeaderContent({
    required this.activeSection,
    required this.onMenuClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "MyPortfolio",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Spacer(),

        // 1. Theme Lottie Button (Mobile cũng dùng được luôn)
        const _ThemeLottieButton(),

        const SizedBox(width: 4),

        // 2. Language Dropdown
        const _LanguageDropdown(),

        const SizedBox(width: 4),

        // 3. Hamburger Menu
        PopupMenuButton<PortfolioSection>(
          icon: const Icon(Icons.menu),
          onSelected: onMenuClick,
          itemBuilder: (BuildContext context) {
            return [
              ...PortfolioSection.values.map((PortfolioSection section) {
                return PopupMenuItem<PortfolioSection>(
                  value: section,
                  child: Text(
                    section.title,
                    style: TextStyle(
                      color: section == activeSection ? Colors.blue : null,
                      fontWeight: section == activeSection
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              }),
              const PopupMenuDivider(),
              PopupMenuItem(
                onTap: () {},
                child: const Row(
                  children: [
                    Icon(Icons.download, size: 20),
                    SizedBox(width: 8),
                    Text("Download CV"),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}

// ---------------- NEW WIDGETS ----------------

// VN: Widget quản lý Animation chuyển đổi Theme
class _ThemeLottieButton extends StatefulWidget {
  const _ThemeLottieButton();

  @override
  State<_ThemeLottieButton> createState() => _ThemeLottieButtonState();
}

class _ThemeLottieButtonState extends State<_ThemeLottieButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isInitialized = false;

  // VN: Định nghĩa các mốc (Checkpoint) của Animation
  // Nếu Animation của bạn lệch, hãy chỉnh số 0.5 này (ví dụ 0.45 hoặc 0.6)
  static const double _pointDay = 0.0; // Điểm bắt đầu (Ngày)
  static const double _pointNight = 0.5; // Điểm giữa (Đêm)
  static const double _pointEnd = 1.0; // Điểm kết thúc (Về lại Ngày)

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2500,
      ), // Tăng thời gian chút cho mượt
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isInitialized) {
      final state = context.read<AppCoreCubit>().state;
      if (state is AppCoreSettings) {
        bool isDark;
        if (state.themeMode == ThemeMode.system) {
          final brightness = MediaQuery.platformBrightnessOf(context);
          isDark = brightness == Brightness.dark;
        } else {
          isDark = state.themeMode == ThemeMode.dark;
        }

        // VN: Logic khởi tạo vị trí
        // Nếu là Dark -> Nhảy ngay tới điểm giữa (0.5)
        // Nếu là Light -> Ở vạch xuất phát (0.0)
        _controller.value = isDark ? _pointNight : _pointDay;
        _isInitialized = true;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() async {
    final isAtNightPos = (_controller.value - _pointNight).abs() < 0.1;

    if (isAtNightPos) {
      await _controller.animateTo(_pointEnd, curve: Curves.easeInOutCubic);
    } else {
      await _controller.animateTo(_pointNight, curve: Curves.fastOutSlowIn);
    }

    if (mounted) {
      final currentBrightness = MediaQuery.platformBrightnessOf(context);
      context.read<AppCoreCubit>().toggleTheme(currentBrightness);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: 100,
        height: 50,
        alignment: Alignment.center,
        child: Lottie.asset(
          'animations/day_night_cycle.json',
          controller: _controller,
          fit: BoxFit.cover,
          repeat: false,
        ),
      ),
    );
  }
}

class _LanguageDropdown extends StatelessWidget {
  const _LanguageDropdown();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCoreCubit, AppCoreState>(
      builder: (context, state) {
        final currentLang = state is AppCoreSettings
            ? state.locale.languageCode
            : 'vi';

        return DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: currentLang,
            // Giảm kích thước icon và padding để gọn hơn
            icon: const Icon(Icons.keyboard_arrow_down, size: 16),
            style: context.text.button.copyWith(
              color: context.colors.textPrimary,
            ),
            onChanged: (String? newValue) {
              if (newValue != null && newValue != currentLang) {
                context.read<AppCoreCubit>().changeLanguage(newValue);
              }
            },
            items: const [
              DropdownMenuItem(value: 'vi', child: Text("VI")),
              DropdownMenuItem(value: 'en', child: Text("EN")),
            ],
          ),
        );
      },
    );
  }
}
