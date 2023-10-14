import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';
import 'package:test_task_weather/core/assets.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/widget/temperature_item.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';
import 'package:test_task_weather/util/enum/temperature_item_type.dart';

class WeatherContainer extends StatefulWidget {
  final WeekWeatherEntity weekWeatherEntity;

  const WeatherContainer({required this.weekWeatherEntity, super.key});

  @override
  State<WeatherContainer> createState() => _WeatherContainerState();
}

class _WeatherContainerState extends State<WeatherContainer> {
  late String day;
  late String dayName;

  @override
  void initState() {
    _formatterDateTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.all(10.spMin),
      margin: EdgeInsets.only(top: 24.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1.r,
          ),
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                day,
                style: context.appTextStyles.fs24
                    ?.copyWith(color: AppColors.black),
              ),
              Text(
                dayName,
                style: context.appTextStyles.fs24
                    ?.copyWith(color: AppColors.black),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TemperatureItem(
                          weekWeatherEntity: widget.weekWeatherEntity,
                          temperatureItemType: TemperatureItemType.min,
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        TemperatureItem(
                          weekWeatherEntity: widget.weekWeatherEntity,
                          temperatureItemType: TemperatureItemType.max,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          '${S.of(context).probabilityPrecipitation} ',
                          style: context.appTextStyles.caption14
                              ?.copyWith(color: AppColors.greyColor),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '${widget.weekWeatherEntity.precipitationProbabilityMax} ${widget.weekWeatherEntity.precipitationProbabilityMaxUnits}',
                          style: context.appTextStyles.fs18
                              ?.copyWith(color: AppColors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                _getIconWeather(),
                width: 120.spMin,
                height: 120.spMin,
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getIconWeather() {
    if (widget.weekWeatherEntity.precipitationProbabilityMax < 50.0) {
      return Assets.icWeatherSun;
    } else if (widget.weekWeatherEntity.precipitationProbabilityMax > 65.0) {
      return Assets.icWeatherRains;
    } else {
      return Assets.icWeatherClouds;
    }
  }

  void _formatterDateTime() {
    final dateString = widget.weekWeatherEntity.dateTime;
    final parsedDate = DateTime.parse(dateString);

    day = DateFormat('dd MMMM').format(parsedDate);
    dayName = DateFormat('EEEE').format(parsedDate);
  }
}
