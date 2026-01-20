import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// VN: Định nghĩa sealed class gốc để tận dụng pattern matching
sealed class AppCoreState extends Equatable {
  const AppCoreState();

  @override
  List<Object?> get props => [];
}

// VN: State chính chứa cấu hình (Theme, Locale, Error)
final class AppCoreSettings extends AppCoreState {
  final ThemeMode themeMode;
  final Locale locale;
  final String? lastErrorMessage;
  final int errorTimestamp;

  const AppCoreSettings({
    this.themeMode = ThemeMode.system,
    this.locale = const Locale('vi'),
    this.lastErrorMessage,
    this.errorTimestamp = 0,
  });

  // VN: Thủ công tạo copyWith thay vì dùng Freezed
  AppCoreSettings copyWith({
    ThemeMode? themeMode,
    Locale? locale,
    String? lastErrorMessage,
    int? errorTimestamp,
  }) {
    return AppCoreSettings(
      themeMode: themeMode ?? this.themeMode,
      locale: locale ?? this.locale,
      lastErrorMessage: lastErrorMessage ?? this.lastErrorMessage,
      errorTimestamp: errorTimestamp ?? this.errorTimestamp,
    );
  }

  @override
  List<Object?> get props => [
    themeMode,
    locale,
    lastErrorMessage,
    errorTimestamp,
  ];
}
