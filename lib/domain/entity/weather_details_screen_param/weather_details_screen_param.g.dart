// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_details_screen_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDetailsScreenParamImpl _$$WeatherDetailsScreenParamImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDetailsScreenParamImpl(
      cityName: json['cityName'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherDetailsScreenParamImplToJson(
        _$WeatherDetailsScreenParamImpl instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
