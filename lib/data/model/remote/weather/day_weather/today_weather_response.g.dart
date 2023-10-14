// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayWeatherResponseImpl _$$TodayWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodayWeatherResponseImpl(
      currentUnits: json['current_units'] == null
          ? null
          : CurrentUnitsWeatherResponse.fromJson(
              json['current_units'] as Map<String, dynamic>),
      currentWeather: json['current'] == null
          ? null
          : CurrentDayResponse.fromJson(
              json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TodayWeatherResponseImplToJson(
        _$TodayWeatherResponseImpl instance) =>
    <String, dynamic>{
      'current_units': instance.currentUnits,
      'current': instance.currentWeather,
    };

_$CurrentUnitsWeatherResponseImpl _$$CurrentUnitsWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentUnitsWeatherResponseImpl(
      temperatureUnits: json['temperature_2m'] as String?,
      precipitationUnits: json['precipitation'] as String?,
      rainUnits: json['rain'] as String?,
      snowfallUnits: json['snowfall'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsWeatherResponseImplToJson(
        _$CurrentUnitsWeatherResponseImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperatureUnits,
      'precipitation': instance.precipitationUnits,
      'rain': instance.rainUnits,
      'snowfall': instance.snowfallUnits,
    };

_$CurrentDayResponseImpl _$$CurrentDayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentDayResponseImpl(
      temperature: (json['temperature_2m'] as num?)?.toDouble(),
      precipitation: (json['precipitation'] as num?)?.toDouble(),
      rain: (json['rain'] as num?)?.toDouble(),
      snowfall: (json['snowfall'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CurrentDayResponseImplToJson(
        _$CurrentDayResponseImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'snowfall': instance.snowfall,
    };
