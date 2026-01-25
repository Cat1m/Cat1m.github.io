import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/ui/ui.dart';
import 'package:my_portfolio/features/portfolio/ui/portfolio_page.dart';
import 'core/di/injection.dart';
import 'features/app_core/bloc/app_core_cubit.dart';
import 'features/app_core/bloc/app_core_state.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppCoreCubit>(),
      child: BlocBuilder<AppCoreCubit, AppCoreState>(
        builder: (context, state) {
          return switch (state) {
            AppCoreSettings settings => MaterialApp(
              title: 'My Portfolio',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.light(),
              darkTheme: AppTheme.dark(),
              themeMode: settings.themeMode,
              locale: settings.locale,

              // 1. Builder chỉ dùng cho Global Listener (Toast, Dialog, etc.)
              // TUYỆT ĐỐI KHÔNG bọc SelectionArea ở đây
              builder: (context, child) {
                return BlocListener<AppCoreCubit, AppCoreState>(
                  listener: (context, state) {
                    if (state is AppCoreSettings &&
                        state.lastErrorMessage != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            state.lastErrorMessage!,
                            style: context.text.body1.copyWith(
                              color: context.colors.surface,
                            ),
                          ),
                          backgroundColor: context.colors.error,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  listenWhen: (prev, curr) {
                    return (prev is AppCoreSettings &&
                            curr is AppCoreSettings) &&
                        prev.errorTimestamp != curr.errorTimestamp;
                  },
                  child: child!,
                );
              },

              // 2. Chuyển toàn bộ Logic (Copy & Zoom) vào home
              home: const MainLayoutWrapper(child: PortfolioPage()),
            ),
            // ignore: unreachable_switch_case
            _ => const MaterialApp(
              home: Scaffold(body: Center(child: CircularProgressIndicator())),
            ),
          };
        },
      ),
    );
  }
}

// Widget tách biệt để xử lý các wrapper (Zoom, Selection)
class MainLayoutWrapper extends StatelessWidget {
  final Widget child;

  const MainLayoutWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // 1. Bọc SelectionArea ở đây (Bên trong Navigator -> Có Overlay -> OK)
    return SelectionArea(
      // 2. Bọc Logic Zoom bên trong
      child: _buildZoomableWrapper(context, child),
    );
  }

  Widget _buildZoomableWrapper(BuildContext context, Widget child) {
    final isMobileWeb =
        kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);

    if (isMobileWeb) {
      return InteractiveViewer(minScale: 1.0, maxScale: 4.0, child: child);
    }
    return child;
  }
}
