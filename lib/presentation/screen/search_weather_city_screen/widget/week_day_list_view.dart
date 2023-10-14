import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/widget/weather_container.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';

class WeekDayListView extends StatefulWidget {
  final List<WeekWeatherEntity> listWeekWeatherEntity;

  const WeekDayListView({required this.listWeekWeatherEntity, Key? key})
      : super(key: key);

  @override
  State<WeekDayListView> createState() => _WeekDayListViewState();
}

class _WeekDayListViewState extends State<WeekDayListView> {
  @override
  Widget build(BuildContext context) {
    return (widget.listWeekWeatherEntity.isNotEmpty)
        ? ListView.builder(
            padding: EdgeInsets.only(top: 150.h,  left:15.w,right: 15.w,bottom: 100.h),
            itemCount: widget.listWeekWeatherEntity.length,
            itemBuilder: (context, index) {
              return WeatherContainer(
                weekWeatherEntity: widget.listWeekWeatherEntity[index],
              );
            },
          )
        : Center(
            child: Text(
              S.of(context).enterAddress,
              style: context.appTextStyles.fs28,
            ),
          );
  }
}
