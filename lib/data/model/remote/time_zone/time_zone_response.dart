import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_response.freezed.dart';

part 'time_zone_response.g.dart';

@freezed
class TimeZoneResponse with _$TimeZoneResponse {
  const factory TimeZoneResponse({
    required int? dstOffset,
    required int? rawOffset,
    required String? status,
    required String? timeZoneId,
    required String? timeZoneName,
  }) = _TimeZoneResponse;

  factory TimeZoneResponse.fromJson(Map<String, Object?> json) =>
      _$TimeZoneResponseFromJson(json);
}
