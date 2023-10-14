import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';
import 'package:test_task_weather/util/enum/temperature_item_type.dart';

class TemperatureItem extends StatelessWidget {
  final WeekWeatherEntity weekWeatherEntity;
  final TemperatureItemType  temperatureItemType;

  const TemperatureItem({required this.weekWeatherEntity, required this.temperatureItemType, super. key}) ;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
        temperatureItemType==TemperatureItemType.max? S.of(context).max:S.of(context).min,
          style: context.appTextStyles.caption14
              ?.copyWith(color: AppColors.greyColor),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          '${temperatureItemType==TemperatureItemType.max? weekWeatherEntity.temperatureMax:weekWeatherEntity.temperatureMin} ${weekWeatherEntity.temperatureUnits}',
          style: context.appTextStyles.fs18
              ?.copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
