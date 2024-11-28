import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  const AppButtonTheme({
    required this.primaryText,
    required this.primaryDefault,
    required this.primaryHover,
    required this.primaryFocused,
    required this.primaryDisabled,
  });

  factory AppButtonTheme.light() {
    return AppButtonTheme(
      primaryText: AppColors.white,
      primaryDefault: AppColors.brand.shade500,
      primaryHover: AppColors.brand.shade600,
      primaryFocused: AppColors.brand.shade700,
      primaryDisabled: AppColors.brand.shade300,
    );
  }

  final Color primaryText;
  final Color primaryDisabled;

  final Color primaryDefault;

  final Color primaryHover;

  final Color primaryFocused;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    Color? primaryText,
    Color? primaryDefault,
    Color? primaryHover,
    Color? primaryFocused,
    Color? primaryDisabled,
  }) {
    return AppButtonTheme(
      primaryText: primaryText ?? this.primaryText,
      primaryDefault: primaryDefault ?? this.primaryDefault,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryFocused: primaryFocused ?? this.primaryFocused,
      primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(
      covariant ThemeExtension<AppButtonTheme>? other,
      double t,
      ) {
    if (other is! AppButtonTheme) {
      return this;
    }

    return AppButtonTheme(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      primaryDefault: Color.lerp(primaryDefault, other.primaryDefault, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryFocused: Color.lerp(primaryFocused, other.primaryFocused, t)!,
      primaryDisabled: Color.lerp(primaryDisabled, other.primaryDisabled, t)!,
    );
  }
}