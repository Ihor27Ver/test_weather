// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekWeatherResponseImpl _$$WeekWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekWeatherResponseImpl(
      dailyUnits: json['daily_units'] == null
          ? null
          : DailyUnitsWeatherResponse.fromJson(
              json['daily_units'] as Map<String, dynamic>),
      dailyWeather: json['daily'] == null
          ? null
          : DailyResponse.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekWeatherResponseImplToJson(
        _$WeekWeatherResponseImpl instance) =>
    <String, dynamic>{
      'daily_units': instance.dailyUnits,
      'daily': instance.dailyWeather,
    };

_$DailyUnitsWeatherResponseImpl _$$DailyUnitsWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyUnitsWeatherResponseImpl(
      temperatureMaxUnits: json['temperature_2m_max'] as String?,
      precipitationProbabilityMax:
          json['precipitation_probability_max'] as String?,
    );

Map<String, dynamic> _$$DailyUnitsWeatherResponseImplToJson(
        _$DailyUnitsWeatherResponseImpl instance) =>
    <String, dynamic>{
      'temperature_2m_max': instance.temperatureMaxUnits,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
    };

_$DailyResponseImpl _$$DailyResponseImplFromJson(Map<String, dynamic> json) =>
    _$DailyResponseImpl(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperatureMax: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      temperatureMin: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbabilityMax:
          (json['precipitation_probability_max'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
      uvIndexClearSkyMax: (json['uv_index_clear_sky_max'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$DailyResponseImplToJson(_$DailyResponseImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperatureMax,
      'temperature_2m_min': instance.temperatureMin,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'uv_index_clear_sky_max': instance.uvIndexClearSkyMax,
    };
