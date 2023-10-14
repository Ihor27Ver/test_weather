import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_details_screen_param.freezed.dart';

part 'weather_details_screen_param.g.dart';

@freezed
class WeatherDetailsScreenParam with _$WeatherDetailsScreenParam {
  const factory WeatherDetailsScreenParam({
    required String? cityName,
    required double? latitude,
    required double? longitude,

  }) = _WeatherDetailsScreenParam;

  factory WeatherDetailsScreenParam.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailsScreenParamFromJson(json);

  factory WeatherDetailsScreenParam.empty() =>
      const WeatherDetailsScreenParam(
        cityName: '',
        latitude: -1,
        longitude: -1,

      );
}