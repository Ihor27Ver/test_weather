import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/router/app_router.dart';
import 'package:test_task_weather/domain/entity/weather/today_weather/today_weather_entity.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/domain/usecase/get_today_weater_use_case.dart';
import 'package:test_task_weather/domain/usecase/get_week_weater_use_case.dart';
import 'package:test_task_weather/presentation/widgets/dialog/blurred_dialog.dart';

class WeatherService {
  TodayWeatherEntity _todayWeatherEntity = TodayWeatherEntity.empty();
  final List<WeekWeatherEntity> _weekWeatherEntity =
      List<WeekWeatherEntity>.empty(growable: true);

  TodayWeatherEntity get todayWeatherEntity => _todayWeatherEntity;

  List<WeekWeatherEntity> get weekWeatherEntity => _weekWeatherEntity;

  final GetTodayWeatherUseCase _getTodayWeatherUseCase =
      GetIt.I.get<GetTodayWeatherUseCase>();

  final GetWeekWeatherUseCase _getWeekWeatherUseCase =
      GetIt.I.get<GetWeekWeatherUseCase>();

  Future<TodayWeatherEntity> getTodayWeather({required LatLng latLng}) async {
    final result = await _getTodayWeatherUseCase(latLng: latLng);
    result.when(success: (data) {
      _todayWeatherEntity = data;
    }, error: (error) {
      _openDialog();
    });
    return _todayWeatherEntity;
  }

  Future<List<WeekWeatherEntity>> getWeekWeather(
      {required LatLng latLng, required String timeZone}) async {
    final result =
        await _getWeekWeatherUseCase(latLng: latLng, timeZone: timeZone);
    result.when(success: (data) {
      _weekWeatherEntity
        ..clear()
        ..addAll(data);
    }, error: (error) {
      _openDialog();
    });

    return _weekWeatherEntity;
  }

  void _openDialog() {
    final contextNavigator = AppRouter.rootNavigator()?.context;
    if (contextNavigator != null) {
      BlurredDialog.show(
          context: contextNavigator,
          dialogBody: Column(
            children: [
              const Text('Sorry, something went wrong.'),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
          width: 300.w);
    }
  }
}
