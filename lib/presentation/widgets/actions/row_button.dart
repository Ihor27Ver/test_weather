import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';
import 'package:test_task_weather/core/router/app_router.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';
import 'package:test_task_weather/presentation/widgets/actions/app_standard_button.dart';


class RowButton extends StatelessWidget {
  final WeatherDetailsScreenParam? weatherDetailsParam;
  const RowButton({ this.weatherDetailsParam, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 24.h, // Place the Column at the bottom of the Stack
        left: 0.0,
        right: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppStandardButton(
                borderRadius:20.r,
                width: 150.w,
                onPressed: () {
                  context.goNamed(AppRouter.homeScreen);
                }, widget: Text(S.of(context).map.toUpperCase(),style: context.appTextStyles.button18?.copyWith(color:AppColors.white),)),
            AppStandardButton(
                borderRadius:20.r,
                width: 150.w,
                onPressed: () {
                  context.goNamed(AppRouter.weatherDetailsPage,extra: weatherDetailsParam??'');
                }, widget: Text(S.of(context).search.toUpperCase(),style: context.appTextStyles.button18?.copyWith(color:AppColors.white),)),

          ],
        ));
  }
}
