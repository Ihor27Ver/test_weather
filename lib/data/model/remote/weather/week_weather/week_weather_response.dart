import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_weather_response.freezed.dart';

part 'week_weather_response.g.dart';

@freezed
class WeekWeatherResponse with _$WeekWeatherResponse {
  const factory WeekWeatherResponse({
    @JsonKey(name: 'daily_units')
    required DailyUnitsWeatherResponse? dailyUnits,
    @JsonKey(name: 'daily') required DailyResponse? dailyWeather,
  }) = _WeekWeatherResponse;

  factory WeekWeatherResponse.fromJson(Map<String, Object?> json) =>
      _$WeekWeatherResponseFromJson(json);
}

@freezed
class DailyUnitsWeatherResponse with _$DailyUnitsWeatherResponse {
  const factory DailyUnitsWeatherResponse({
    @JsonKey(name: 'temperature_2m_max') required String? temperatureMaxUnits,
    @JsonKey(name: 'precipitation_probability_max')
    required String? precipitationProbabilityMax,
  }) = _DailyUnitsWeatherResponse;

  factory DailyUnitsWeatherResponse.fromJson(Map<String, Object?> json) =>
      _$DailyUnitsWeatherResponseFromJson(json);
}

@freezed
class DailyResponse with _$DailyResponse {
  const factory DailyResponse({
    required List<String>? time,
    @JsonKey(name: 'temperature_2m_max') required List<double>? temperatureMax,
    @JsonKey(name: 'temperature_2m_min') required List<double>? temperatureMin,
    @JsonKey(name: 'precipitation_probability_max')
    required List<double>? precipitationProbabilityMax,
    @JsonKey(name: 'uv_index_clear_sky_max')
    required List<double>? uvIndexClearSkyMax,
  }) = _DailyResponse;

  factory DailyResponse.fromJson(Map<String, Object?> json) =>
      _$DailyResponseFromJson(json);
}
