// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeResponseImpl _$$TimeResponseImplFromJson(Map<String, dynamic> json) =>
    _$TimeResponseImpl(
      currentDateTime: DateTime.parse(json['currentDateTime'] as String),
    );

Map<String, dynamic> _$$TimeResponseImplToJson(_$TimeResponseImpl instance) =>
    <String, dynamic>{
      'currentDateTime': instance.currentDateTime.toIso8601String(),
    };
