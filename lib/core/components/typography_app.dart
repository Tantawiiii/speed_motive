import 'package:flutter/material.dart';

interface class AppTypography extends ThemeExtension<AppTypography> {
  AppTypography({
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.buttonXLarge,
    required this.button2XLarge,
  });

  final TextStyle buttonLarge;
  final TextStyle buttonMedium;
  final TextStyle buttonSmall;
  final TextStyle buttonXLarge;
  final TextStyle button2XLarge;



  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
    TextStyle? buttonXLarge,
    TextStyle? button2XLarge,
  }) {
    return AppTypography(
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      button2XLarge: button2XLarge ?? this.button2XLarge,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography(
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,
    );
  }
}

class AppRegularTypography extends AppTypography {
  AppRegularTypography({

    super.button2XLarge = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
    ),

    super.buttonXLarge = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
    ),

    super.buttonLarge = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
    ),
    super.buttonMedium = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    super.buttonSmall = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
  });
}
