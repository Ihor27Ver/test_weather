import 'package:flutter/material.dart';

import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgLight,
    extensions: [
      ThemeColors.light,
      ThemeTextStyles.light,
    ],
    dialogTheme: const DialogTheme(backgroundColor: AppColors.bgLight),
  );
}
