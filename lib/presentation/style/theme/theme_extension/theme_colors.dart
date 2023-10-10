import 'package:flutter/material.dart';

import 'package:test_task_weather/presentation/style/app_colors.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  static const light = ThemeColors(
    backgroundColor: AppColors.bgLight,
    buttonColor: AppColors.greenLight,
    buttonDisabledColor: AppColors.buttonDisabledLight,
    borderEnabledColor: AppColors.textLight,
  );

  static const dark = ThemeColors(
    backgroundColor: AppColors.bgDark,
    buttonColor: AppColors.greenDark,
    buttonDisabledColor: AppColors.buttonDisabledDark,
    borderEnabledColor: AppColors.textDark,
  );

  final Color backgroundColor;
  final Color buttonColor;
  final Color buttonDisabledColor;
  final Color borderEnabledColor;

  const ThemeColors({
    required this.backgroundColor,
    required this.buttonColor,
    required this.buttonDisabledColor,
    required this.borderEnabledColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? backgroundColor,
    Color? buttonColor,
    Color? buttonDisabledColor,
    Color? borderEnabledColor,
  }) {
    return ThemeColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
      buttonDisabledColor: buttonDisabledColor ?? this.buttonDisabledColor,
      borderEnabledColor: borderEnabledColor ?? this.borderEnabledColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t) ?? buttonColor,
      buttonDisabledColor:
          Color.lerp(buttonDisabledColor, other.buttonDisabledColor, t) ??
              buttonDisabledColor,
      borderEnabledColor:
          Color.lerp(borderEnabledColor, other.borderEnabledColor, t) ??
              borderEnabledColor,
    );
  }
}
