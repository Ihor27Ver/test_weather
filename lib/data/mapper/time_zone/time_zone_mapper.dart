import 'package:test_task_weather/core/arch/domain/common/converter/mapper.dart';
import 'package:test_task_weather/data/model/remote/time_zone/time_zone_response.dart';
import 'package:test_task_weather/domain/entity/time_zone/time_zone_entity.dart';

class _TimeZoneMapper implements Mapper<TimeZoneResponse, TimeZoneEntity> {
  @override
  TimeZoneEntity map(TimeZoneResponse from) {
    return TimeZoneEntity(
        dstOffset: from.dstOffset?? -1,
        rawOffset:from.rawOffset?? -1,
        status: from.status??'',
        timeZoneId:from.timeZoneId?? '',
        timeZoneName: from.timeZoneName??'');
  }
}

class TimeZoneMappers {
  final _weatherResponseToTodayWeatherEntityMapper = _TimeZoneMapper();

  TimeZoneEntity mapResponseToTimeZoneEntity(
      TimeZoneResponse response) =>
      _weatherResponseToTodayWeatherEntityMapper.map(response);

}
