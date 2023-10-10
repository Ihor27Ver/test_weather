import 'package:flutter/material.dart';

import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bgDark,
    extensions: [
      ThemeColors.dark,
      ThemeTextStyles.dark,
    ],
    dialogTheme: const DialogTheme(backgroundColor: AppColors.bgDark),
  );
}
