import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_weather_response.freezed.dart';

part 'today_weather_response.g.dart';

@freezed
class TodayWeatherResponse with _$TodayWeatherResponse{
  const factory TodayWeatherResponse({
    @JsonKey(name: 'current_units') required CurrentUnitsWeatherResponse? currentUnits,
    @JsonKey(name: 'current') required  CurrentDayResponse? currentWeather,
  }) = _TodayWeatherResponse;


  factory TodayWeatherResponse.fromJson(Map<String, Object?> json) =>
      _$TodayWeatherResponseFromJson(json);

}




@freezed
class CurrentUnitsWeatherResponse with _$CurrentUnitsWeatherResponse{
  const factory CurrentUnitsWeatherResponse({
    @JsonKey(name: 'temperature_2m') required String? temperatureUnits,
    @JsonKey(name: 'precipitation') required String? precipitationUnits,
    @JsonKey(name: 'rain') required String? rainUnits,
    @JsonKey(name: 'snowfall') required String? snowfallUnits,
  }) = _CurrentUnitsWeatherResponse;

  factory CurrentUnitsWeatherResponse.fromJson(Map<String, Object?> json) =>
      _$CurrentUnitsWeatherResponseFromJson(json);


}


@freezed
class CurrentDayResponse with _$CurrentDayResponse {
  const factory CurrentDayResponse({
    @JsonKey(name: 'temperature_2m') required double? temperature,
    required double? precipitation,
    required double? rain,
    required double? snowfall,
  }) = _CurrentDayResponse;

  factory CurrentDayResponse.fromJson(Map<String, Object?> json) =>
      _$CurrentDayResponseFromJson(json);
}



