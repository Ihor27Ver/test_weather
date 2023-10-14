import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/data/remote/clients/dio/api_client.dart';
import 'package:test_task_weather/core/arch/data/remote/clients/dio/dio_request_processor/dio_request_processor.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/data_response.dart';
import 'package:test_task_weather/core/di/services.dart';
import 'package:test_task_weather/data/model/remote/time_zone/time_zone_response.dart';
import 'package:test_task_weather/data/model/remote/weather/day_weather/today_weather_response.dart';
import 'package:test_task_weather/data/model/remote/weather/week_weather/week_weather_response.dart';
import 'package:test_task_weather/data/source/remote/weather/weather_source.dart';

//{response_imports}
//{request_imports}

class WeatherSourceImpl extends WeatherSource {
  final ApiClient _apiClient;
  final DioRequestProcessor _dioRequestProcessor;
  final _todayWeather =
      '&current=temperature_2m,precipitation,rain,snowfall&hourly=temperature_2m&forecast_days=1';
  final _weekWeather =
      '&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,uv_index_clear_sky_max,precipitation_probability_max&';
final _timeZone='https://maps.googleapis.com/maps/api/timezone/json?timestamp=1331161200&';


  WeatherSourceImpl(this._apiClient, this._dioRequestProcessor);

  @override
  Future<DataResponse<TodayWeatherResponse>> getTodayWeather(
      {required LatLng latLng}) async {
    final request = _apiClient.client.get(
        'forecast?latitude=${latLng.latitude}&longitude=${latLng.longitude}$_todayWeather');
    return _dioRequestProcessor.processRequest(
      onRequest: () => request,
      onResponse: (response) => TodayWeatherResponse.fromJson(response.data),
    );
  }

  @override
  Future<DataResponse<WeekWeatherResponse>> getWeekWeather({required LatLng latLng,required  String timeZone }) {
    final request = _apiClient.client.get(
        'forecast?latitude=${latLng.latitude}&longitude=${latLng.longitude}${_weekWeather}timezone=$timeZone');
    return _dioRequestProcessor.processRequest(
      onRequest: () => request,
      onResponse: (response) => WeekWeatherResponse.fromJson(response.data),
    );
  }

  @override
  Future<DataResponse<TimeZoneResponse>> getTimeZone({required LatLng latLng}) {
    final kGoogleApiKey =
    environmentService().getEnvironmentVariable('GOOGLE_MAPS_API_KEY');
    final request = _apiClient.client.get(
        '${_timeZone}location=${latLng.latitude},${latLng.longitude}&key=$kGoogleApiKey');
    return _dioRequestProcessor.processRequest(
      onRequest: () => request,
      onResponse: (response) => TimeZoneResponse.fromJson(response.data),
    );
  }
}
//timezone=Asia%2FSingapore