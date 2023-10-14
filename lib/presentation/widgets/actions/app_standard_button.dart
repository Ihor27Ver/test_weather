import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

class AppStandardButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final double? _width;
  final double? _height;
  final Widget _widget;
  final Color? _backgroundColor;
  final Color? _borderColor;
  final double _borderRadius;
  final Color? _shadowColor;
  final double? elevationButton;

  const AppStandardButton({
    required VoidCallback onPressed,
    required Widget widget,
    Color? borderColor,
    double? width,
    double? height,

    Color? shadowColor,
    Color? backgroundColor = AppColors.greenDark,
    borderRadius=5.0,

    super.key, this.elevationButton,
  })  : _widget = widget,
        _backgroundColor = backgroundColor,
        _width = width,
        _height = height,
        _borderColor = borderColor,
        _onPressed = onPressed,
        _borderRadius=borderRadius,
        _shadowColor=shadowColor;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: _width ??1.sw,
      height: _height ?? 54.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(

          shadowColor: _shadowColor,
          side:  BorderSide(
            width: 1.spMin,
            color: _borderColor ?? Colors.transparent,
          ),
          elevation: elevationButton,
          backgroundColor: _backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius.r),
          ),
        ),
        onPressed: _onPressed,
        child: _widget,
      ),
    );
  }
}
