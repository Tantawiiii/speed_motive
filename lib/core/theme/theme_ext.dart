import 'package:flutter/material.dart';

import '../components/button_theme.dart';
import '../components/input_app_theme.dart';
import '../components/typography_app.dart';
import 'app_theme.dart';

extension ThemeExt on BuildContext {

  ThemeData get theme => Theme.of(this);

  AppButtonTheme get buttonTheme =>
      theme.extension<AppTheme>()!.appButtonTheme as AppButtonTheme;

  AppInputTheme get inputTheme =>
      theme.extension<AppTheme>()!.appInputTheme as AppInputTheme;


}