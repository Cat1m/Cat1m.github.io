import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/ui/ui.dart'; // VN: Import duy nhất file này là đủ
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
              debugShowCheckedModeBanner: false, // Tắt banner debug cho đẹp
              // VN: --- TÍCH HỢP THEME MỚI TẠI ĐÂY ---
              theme: AppTheme.light(),
              darkTheme: AppTheme.dark(),

              // -------------------------------------
              themeMode: settings.themeMode,
              locale: settings.locale,
              builder: (context, child) {
                return BlocListener<AppCoreCubit, AppCoreState>(
                  listener: (context, state) {
                    if (state is AppCoreSettings &&
                        state.lastErrorMessage != null) {
                      // VN: Refactor Snackbar dùng màu từ context
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            state.lastErrorMessage!,
                            style: context.text.body1.copyWith(
                              color: context.colors.surface,
                            ),
                          ),
                          backgroundColor:
                              context.colors.error, // Dùng màu Error chuẩn
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
              home: const PortfolioPage(),
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
