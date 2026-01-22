import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';
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
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ), // Giảm padding chút cho Mobile đỡ chật
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
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
        const Text(
          "MyPortfolio",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const Spacer(),

        // Menu Items
        ...PortfolioSection.values.map((section) {
          final isActive = section == activeSection;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              onPressed: () => onMenuClick(section),
              style: TextButton.styleFrom(
                foregroundColor: isActive ? Colors.blue : Colors.grey,
              ),
              child: Text(
                section.title,
                style: TextStyle(
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }),

        const SizedBox(width: 16),

        // --- ACTION AREA ---
        // Switch Theme
        const _ThemeSwitch(),
        const SizedBox(width: 12),

        // Language Dropdown
        const _LanguageDropdown(),
        const SizedBox(width: 16),

        // Resume Button
        ElevatedButton(onPressed: () {}, child: const Text("CV")),
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
        // Logo nhỏ hơn xíu cho mobile
        const Text(
          "MyPortfolio",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Spacer(),

        // 1. Theme Switch
        Transform(
          transform: Matrix4.identity()
            // ignore: deprecated_member_use
            ..scale(0.8), // Thu nhỏ switch lại chút cho gọn
          child: const _ThemeSwitch(),
        ),

        const SizedBox(width: 8),

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
                onTap: () {}, // Download logic
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

// ---------------- HELPER WIDGETS ----------------

class _ThemeSwitch extends StatelessWidget {
  const _ThemeSwitch();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCoreCubit, AppCoreState>(
      builder: (context, state) {
        final isDark = state is AppCoreSettings
            ? state.themeMode == ThemeMode.dark
            : false;

        return Switch(
          value: isDark,
          onChanged: (value) {
            context.read<AppCoreCubit>().toggleTheme();
          },
          // Thêm icon mặt trăng/mặt trời vào thumb
          thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Icon(Icons.dark_mode, size: 16);
            }
            return const Icon(Icons.light_mode, size: 16, color: Colors.orange);
          }),
        );
      },
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
            icon: const Icon(Icons.arrow_drop_down, size: 20),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
            onChanged: (String? newValue) {
              if (newValue != null && newValue != currentLang) {
                context.read<AppCoreCubit>().changeLanguage(newValue);
              }
            },
            items: const [
              DropdownMenuItem(value: 'vi', child: Text("VI")),
              DropdownMenuItem(value: 'en', child: Text("EN")),
              // Sau này thêm 'jp', 'cn' ở đây dễ dàng
            ],
          ),
        );
      },
    );
  }
}
