import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_weather_entity.freezed.dart';

part 'today_weather_entity.g.dart';

@freezed
class TodayWeatherEntity with _$TodayWeatherEntity {
  const factory TodayWeatherEntity({
    required String temperatureUnits,
    required String precipitationUnits,
    required String rainUnits,
    required String snowfallUnits,
    required double temperature,
    required double precipitation,
    required double rain,
    required double snowfall,
  }) = _TodayWeatherEntity;

  factory TodayWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$TodayWeatherEntityFromJson(json);

  factory TodayWeatherEntity.empty() => const TodayWeatherEntity(
        temperatureUnits: '',
        precipitationUnits: '',
        rainUnits: '',
        snowfallUnits: '',
        temperature: -1.0,
        precipitation: -1.0,
        rain: -1.0,
        snowfall: -1.0,
      );
}
