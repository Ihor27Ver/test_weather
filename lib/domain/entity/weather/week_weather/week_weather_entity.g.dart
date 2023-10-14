// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekWeatherEntityImpl _$$WeekWeatherEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekWeatherEntityImpl(
      dateTime: json['dateTime'] as String,
      precipitationProbabilityMaxUnits:
          json['precipitationProbabilityMaxUnits'] as String,
      temperatureUnits: json['temperatureUnits'] as String,
      temperatureMax: (json['temperatureMax'] as num).toDouble(),
      temperatureMin: (json['temperatureMin'] as num).toDouble(),
      uvIndexClearSkyMax: (json['uvIndexClearSkyMax'] as num).toDouble(),
      precipitationProbabilityMax:
          (json['precipitationProbabilityMax'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeekWeatherEntityImplToJson(
        _$WeekWeatherEntityImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'precipitationProbabilityMaxUnits':
          instance.precipitationProbabilityMaxUnits,
      'temperatureUnits': instance.temperatureUnits,
      'temperatureMax': instance.temperatureMax,
      'temperatureMin': instance.temperatureMin,
      'uvIndexClearSkyMax': instance.uvIndexClearSkyMax,
      'precipitationProbabilityMax': instance.precipitationProbabilityMax,
    };
