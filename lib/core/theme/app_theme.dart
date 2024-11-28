import 'package:flutter/material.dart';

import '../components/button_theme.dart';
import '../components/input_app_theme.dart';

class AppTheme extends ThemeExtension<AppTheme> {

  const AppTheme({
    required this.appButtonTheme,
    required this.appInputTheme,
  });

  factory AppTheme.light() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.light(),
      appInputTheme: AppInputTheme.light(),
    );
  }

  final ThemeExtension<AppButtonTheme> appButtonTheme;
  final ThemeExtension<AppInputTheme> appInputTheme;


  @override
  ThemeExtension<AppTheme> copyWith({
    ThemeExtension<AppButtonTheme>? appButtonTheme,
    ThemeExtension<AppInputTheme>? appInputTheme,
  }) {
    return AppTheme(
      appButtonTheme: appButtonTheme ?? this.appButtonTheme,
      appInputTheme: appInputTheme ?? this.appInputTheme,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other,
      double t,
      ) {
    if (other is! AppTheme) {
      return this;
    }

    return AppTheme(
      appButtonTheme: appButtonTheme.lerp(other.appButtonTheme, t),
      appInputTheme: appInputTheme.lerp(other.appInputTheme, t),
    );
  }
}