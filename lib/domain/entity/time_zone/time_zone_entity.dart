import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_entity.freezed.dart';

part 'time_zone_entity.g.dart';

@freezed
class TimeZoneEntity with _$TimeZoneEntity {
  const factory TimeZoneEntity({
    required int? dstOffset,
    required int? rawOffset,
    required String? status,
    required String? timeZoneId,
    required String? timeZoneName,
  }) = _TimeZoneEntity;

  factory TimeZoneEntity.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneEntityFromJson(json);

  factory TimeZoneEntity.empty() => const TimeZoneEntity(
        dstOffset: -1,
        rawOffset: -1,
        timeZoneId: '',
        status: '',
        timeZoneName: '',
      );
}
