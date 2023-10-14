import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_weather_entity.freezed.dart';

part 'week_weather_entity.g.dart';

@freezed
class WeekWeatherEntity with _$WeekWeatherEntity {
  const factory WeekWeatherEntity({
    required String dateTime,
    required String precipitationProbabilityMaxUnits,
    required String temperatureUnits,
    required double temperatureMax,
    required double temperatureMin,
    required double uvIndexClearSkyMax,
    required double precipitationProbabilityMax,
  }) = _WeekWeatherEntity;

  factory WeekWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WeekWeatherEntityFromJson(json);

  factory WeekWeatherEntity.empty() => const WeekWeatherEntity(
        dateTime: '',
        precipitationProbabilityMaxUnits: '',
        temperatureUnits: '',
        temperatureMax: -1.0,
        temperatureMin: -1.0,
        uvIndexClearSkyMax: -1.0,
        precipitationProbabilityMax: -1.0,
      );
}
