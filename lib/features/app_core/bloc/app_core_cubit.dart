import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../core/services/exception_handler_service.dart';
import 'app_core_state.dart';

@injectable
class AppCoreCubit extends Cubit<AppCoreState> {
  final ExceptionHandlerService _exceptionHandlerService;
  late StreamSubscription _errorSubscription;

  // VN: Khởi tạo với state mặc định là AppCoreSettings
  AppCoreCubit({required ExceptionHandlerService exceptionHandlerService})
    : _exceptionHandlerService = exceptionHandlerService,
      super(const AppCoreSettings()) {
    _monitorErrors();
  }

  void _monitorErrors() {
    _errorSubscription = _exceptionHandlerService.errorStream.listen((error) {
      final currentState = state;
      // VN: Chỉ update nếu state hiện tại là Settings (Logic an toàn)
      if (currentState is AppCoreSettings) {
        emit(
          currentState.copyWith(
            lastErrorMessage: error.toString(),
            errorTimestamp: DateTime.now().millisecondsSinceEpoch,
          ),
        );
      }
    });
  }

  void toggleTheme(Brightness currentBrightness) {
    final currentState = state;
    if (currentState is AppCoreSettings) {
      ThemeMode newMode;

      if (currentState.themeMode == ThemeMode.system) {
        // Nếu đang là System:
        // - Máy đang Tối -> Chuyển sang Sáng
        // - Máy đang Sáng -> Chuyển sang Tối
        newMode = currentBrightness == Brightness.dark
            ? ThemeMode.light
            : ThemeMode.dark;
      } else {
        // Logic cũ: Đảo ngược trực tiếp
        newMode = currentState.themeMode == ThemeMode.dark
            ? ThemeMode.light
            : ThemeMode.dark;
      }

      emit(currentState.copyWith(themeMode: newMode));
    }
  }

  void changeLanguage(String code) {
    final currentState = state;
    if (currentState is AppCoreSettings) {
      emit(currentState.copyWith(locale: Locale(code)));
    }
  }

  @override
  Future<void> close() {
    _errorSubscription.cancel();
    return super.close();
  }
}
