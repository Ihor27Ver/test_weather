
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

class AppStandardProgress extends StatelessWidget {
  final double? _size;
  final Color? _color;
  final double? _value;

  const AppStandardProgress({
    double? size,
    Color? color,
    double? value,
    super.key,
  })  : _size = size,
        _color = color,
        _value = value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size ?? 30.spMin,
      width: _size ?? 30.spMin,
      child: CircularProgressIndicator(
        value: _value,
        strokeWidth: 2.spMin,
        valueColor: AlwaysStoppedAnimation<Color>(
          _color ?? AppColors.textDark,
        ),
      ),
    );
  }
}
