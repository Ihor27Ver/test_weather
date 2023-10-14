import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/data_response.dart';
import 'package:test_task_weather/data/model/remote/time_zone/time_zone_response.dart';
import 'package:test_task_weather/data/model/remote/weather/day_weather/today_weather_response.dart';
import 'package:test_task_weather/data/model/remote/weather/week_weather/week_weather_response.dart';



abstract class WeatherSource {
  Future<DataResponse<TodayWeatherResponse>> getTodayWeather({required LatLng latLng});
  Future<DataResponse<WeekWeatherResponse>> getWeekWeather({required LatLng latLng, required  String timeZone });
  Future<DataResponse<TimeZoneResponse>>  getTimeZone({required LatLng latLng});
}
