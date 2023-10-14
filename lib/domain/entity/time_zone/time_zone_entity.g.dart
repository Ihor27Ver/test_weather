// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_zone_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeZoneEntityImpl _$$TimeZoneEntityImplFromJson(Map<String, dynamic> json) =>
    _$TimeZoneEntityImpl(
      dstOffset: json['dstOffset'] as int?,
      rawOffset: json['rawOffset'] as int?,
      status: json['status'] as String?,
      timeZoneId: json['timeZoneId'] as String?,
      timeZoneName: json['timeZoneName'] as String?,
    );

Map<String, dynamic> _$$TimeZoneEntityImplToJson(
        _$TimeZoneEntityImpl instance) =>
    <String, dynamic>{
      'dstOffset': instance.dstOffset,
      'rawOffset': instance.rawOffset,
      'status': instance.status,
      'timeZoneId': instance.timeZoneId,
      'timeZoneName': instance.timeZoneName,
    };
