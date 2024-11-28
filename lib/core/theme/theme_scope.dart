

import 'package:flutter/material.dart';

import 'app_theme.dart';

class ThemeScope extends InheritedWidget {
  const ThemeScope({
    super.key,
    required super.child,
    required this.themeMode,
    required this.appTheme,
  });

  final ThemeMode themeMode;
  final AppTheme appTheme;

  static ThemeScope of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeScope>();
    assert(result != null, 'No ThemeScope found in context');
    return result!;
  }

  bool updateShouldNotify(ThemeScope oldWidget) => true;
}