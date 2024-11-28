

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppInputTheme extends ThemeExtension<AppInputTheme> {
  const AppInputTheme({
    required this.defaultText,
    required this.focusedOnBrand,
    required this.focusedTextDefault,
    required this.errorTextDefault,
    required this.successTextDefault,
    required this.disabledText,
    required this.borderDefault,
    required this.borderHover,
    required this.borderFocused,
    required this.borderError,
    required this.borderSuccess,
    required this.borderDisabled,
    required this.defaultColor,
    required this.disabledColor,
  });

  factory AppInputTheme.light() {
    return AppInputTheme(
      defaultText: AppColors.grayLight[400]!,
      focusedOnBrand: AppColors.brand[500]!,
      focusedTextDefault: AppColors.grayLight[600]!,
      errorTextDefault: AppColors.errorColor[400]!,
      successTextDefault: AppColors.successColor[400]!,
      disabledText: AppColors.grayLight[250]!,
      borderDefault: AppColors.grayLight[250]!,
      borderHover: AppColors.grayLight[300]!,
      borderFocused: AppColors.brand.shade500,
      borderError: AppColors.errorColor[400]!,
      borderSuccess: AppColors.successColor[400]!,
      borderDisabled: AppColors.grayLight[200]!,
      defaultColor: AppColors.white,
      disabledColor: AppColors.grayLight[100]!,
    );
  }

  final Color defaultText;
  final Color focusedOnBrand;
  final Color focusedTextDefault;
  final Color errorTextDefault;
  final Color successTextDefault;
  final Color disabledText;
  final Color borderDefault;
  final Color borderHover;
  final Color borderFocused;
  final Color borderError;
  final Color borderSuccess;
  final Color borderDisabled;
  final Color defaultColor;
  final Color disabledColor;

  @override
  ThemeExtension<AppInputTheme> copyWith({
    Color? defaultText,
    Color? focusedOnBrand,
    Color? focusedTextDefault,
    Color? errorTextDefault,
    Color? successTextDefault,
    Color? disabledText,
    Color? borderDefault,
    Color? borderHover,
    Color? borderFocused,
    Color? borderError,
    Color? borderSuccess,
    Color? borderDisabled,
    Color? defaultColor,
    Color? disabledColor,
  }) {
    return AppInputTheme(
      defaultText: defaultText ?? this.defaultText,
      focusedOnBrand: focusedOnBrand ?? this.focusedOnBrand,
      focusedTextDefault: focusedTextDefault ?? this.focusedTextDefault,
      errorTextDefault: errorTextDefault ?? this.errorTextDefault,
      successTextDefault: successTextDefault ?? this.successTextDefault,
      disabledText: disabledText ?? this.disabledText,
      borderDefault: borderDefault ?? this.borderDefault,
      borderHover: borderHover ?? this.borderHover,
      borderFocused: borderFocused ?? this.borderFocused,
      borderError: borderError ?? this.borderError,
      borderSuccess: borderSuccess ?? this.borderSuccess,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      defaultColor: defaultColor ?? this.defaultColor,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }

  @override
  ThemeExtension<AppInputTheme> lerp(
      covariant ThemeExtension<AppInputTheme>? other,
      double t,
      ) {
    if (other is! AppInputTheme) {
      return this;
    }

    return AppInputTheme(
      defaultText: Color.lerp(defaultText, other.defaultText, t)!,
      focusedOnBrand: Color.lerp(focusedOnBrand, other.focusedOnBrand, t)!,
      focusedTextDefault: Color.lerp(
        focusedTextDefault,
        other.focusedTextDefault,
        t,
      )!,
      errorTextDefault: Color.lerp(
        errorTextDefault,
        other.errorTextDefault,
        t,
      )!,
      successTextDefault: Color.lerp(
        successTextDefault,
        other.successTextDefault,
        t,
      )!,
      disabledText: Color.lerp(disabledText, other.disabledText, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderHover: Color.lerp(borderHover, other.borderHover, t)!,
      borderFocused: Color.lerp(borderFocused, other.borderFocused, t)!,
      borderError: Color.lerp(borderError, other.borderError, t)!,
      borderSuccess: Color.lerp(borderSuccess, other.borderSuccess, t)!,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t)!,
      defaultColor: Color.lerp(defaultColor, other.defaultColor, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
    );
  }
}