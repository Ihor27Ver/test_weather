
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

class BlurredDialog extends StatelessWidget {
  final Widget _body;
  final double _width;
  final EdgeInsets _padding;
  final bool _barrierDismissible;

  const BlurredDialog({
    required Widget body,
    required double width,
    bool barrierDismissible = true,
    EdgeInsets padding = EdgeInsets.zero,
    super.key,
  })  : _body = body,
        _width = width,
        _padding = padding,
  _barrierDismissible=barrierDismissible;



  static Future<dynamic> show({
    required BuildContext context,
    required Widget dialogBody,
    required double width,
    EdgeInsets? padding,
    bool? barrierDismissible,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: AppColors.black.withOpacity(0.3),
      builder: (dialogContext) {
        return BlurredDialog(
          width: width,
          body: dialogBody,
          padding: padding ?? EdgeInsets.zero,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.h,
      insetPadding: _padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      backgroundColor: AppColors.white,
      child: SizedBox(
        width: _width,
        child: IntrinsicHeight(child: _body),
      ),
    );
  }
}
