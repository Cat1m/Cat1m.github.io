import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/portfolio/ui/portfolio_page.dart';
import 'core/di/injection.dart'; // Import file config DI
import 'features/app_core/bloc/app_core_cubit.dart';
import 'features/app_core/bloc/app_core_state.dart';

void main() {
  // VN: Khởi tạo Dependency Injection trước khi chạy app
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // VN: Lấy AppCoreCubit từ GetIt container thay vì khởi tạo thủ công
      create: (_) => getIt<AppCoreCubit>(),
      child: BlocBuilder<AppCoreCubit, AppCoreState>(
        builder: (context, state) {
          // VN: Sử dụng Pattern Matching của Dart 3 để xử lý state
          return switch (state) {
            AppCoreSettings settings => MaterialApp(
              title: 'My Portfolio',
              theme: ThemeData.light(useMaterial3: true),
              darkTheme: ThemeData.dark(useMaterial3: true),
              themeMode: settings.themeMode,
              locale: settings.locale,
              builder: (context, child) {
                return BlocListener<AppCoreCubit, AppCoreState>(
                  listener: (context, state) {
                    // VN: Check lỗi bằng 'is' check để đảm bảo type safe
                    if (state is AppCoreSettings &&
                        state.lastErrorMessage != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.lastErrorMessage!),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  // VN: Trigger listener khi timestamp thay đổi (đảm bảo hiển thị lỗi mới nhất)
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
            // VN: Fallback cho các trạng thái chưa định nghĩa (Loading/Error startup)
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
