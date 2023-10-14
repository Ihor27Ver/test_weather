import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;
  final String hintText;
  final TextInputType? keyboardType;
  final BorderRadius? borderRadius;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? enabledBorderColor;
  final Color? disabledBorderColor;
  final Color? focusedBorderColor;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onEditingComplete;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const AppTextField({
    required this.hintText,
    this.enabled = true,
    this.controller,
    this.keyboardType,
    this.borderRadius,
    this.hintStyle,
    this.fillColor,
    this.obscureText = false,
    this.inputFormatters,
    this.onEditingComplete,
    this.onChanged,
    this.onSubmitted,
    super.key,
    this.textStyle,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.focusedBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      style: textStyle ?? context.appTextStyles.fs18,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: enabledBorderColor ?? AppColors.white,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: disabledBorderColor ?? AppColors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: BorderSide(
            color: focusedBorderColor ?? AppColors.white,
          ),
        ),
        labelText: null,
        hintText: hintText,
        hintStyle: enabled
            ? hintStyle ?? context.appTextStyles.fs18
            : hintStyle?.copyWith(color: hintStyle?.color?.withOpacity(0.2)) ??
                context.appTextStyles.fs18?.copyWith(
                  color: context.appTextStyles.fs18?.color?.withOpacity(0.2),
                ),
        fillColor: fillColor,
        filled: fillColor != null,
      ),
      onEditingComplete: () => onEditingComplete?.call(),
      onChanged: (value) => onChanged?.call(value),
      onSubmitted: (value) => onSubmitted?.call(value),
    );
  }
}
