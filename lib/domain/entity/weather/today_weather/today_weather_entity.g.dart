// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayWeatherEntityImpl _$$TodayWeatherEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TodayWeatherEntityImpl(
      temperatureUnits: json['temperatureUnits'] as String,
      precipitationUnits: json['precipitationUnits'] as String,
      rainUnits: json['rainUnits'] as String,
      snowfallUnits: json['snowfallUnits'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      precipitation: (json['precipitation'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
      snowfall: (json['snowfall'] as num).toDouble(),
    );

Map<String, dynamic> _$$TodayWeatherEntityImplToJson(
        _$TodayWeatherEntityImpl instance) =>
    <String, dynamic>{
      'temperatureUnits': instance.temperatureUnits,
      'precipitationUnits': instance.precipitationUnits,
      'rainUnits': instance.rainUnits,
      'snowfallUnits': instance.snowfallUnits,
      'temperature': instance.temperature,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'snowfall': instance.snowfall,
    };
