import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/time_zone/time_zone_entity.dart';
import 'package:test_task_weather/domain/entity/weather/today_weather/today_weather_entity.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';



abstract class WeatherRepository {
  Future<Result<TodayWeatherEntity>> getTodayWeather({required LatLng latLng});
  Future<Result<List<WeekWeatherEntity>>> getWeekWeather({required LatLng latLng,required String timeZone });
  Future<Result<TimeZoneEntity>> getTimeZone({required LatLng latLng});
}
