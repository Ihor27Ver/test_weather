import 'package:test_task_weather/core/arch/domain/common/converter/mapper.dart';
import 'package:test_task_weather/data/model/remote/weather/day_weather/today_weather_response.dart';
import 'package:test_task_weather/data/model/remote/weather/week_weather/week_weather_response.dart';
import 'package:test_task_weather/domain/entity/weather/today_weather/today_weather_entity.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';


class _TodayWeatherMapper implements Mapper<TodayWeatherResponse, TodayWeatherEntity> {
  @override
  TodayWeatherEntity map(TodayWeatherResponse from) {
    final currentUnits= from.currentUnits;
    final current= from.currentWeather;
    return TodayWeatherEntity(
      temperatureUnits:  currentUnits?.temperatureUnits ??'',
      precipitationUnits: currentUnits?.precipitationUnits??'',
      rainUnits: currentUnits?.rainUnits??'',
      snowfallUnits:  currentUnits?.snowfallUnits??'',
      temperature: current?.temperature??-1,
      precipitation: current?.precipitation??-1,
      rain: current?.rain??-1,
      snowfall: current?.snowfall??-1,

    );
  }
}

class _WeekWeatherMapper implements Mapper<WeekWeatherResponse, List<WeekWeatherEntity>> {
  @override
  List<WeekWeatherEntity> map(WeekWeatherResponse from) {
    final dailyUnits= from.dailyUnits;
    final dailyWeather= from.dailyWeather;
    final timeList= dailyWeather?.time;
    final temperatureMaxList= dailyWeather?.temperatureMax;
    final temperatureMinList= dailyWeather?.temperatureMin;
    final precipitationProbabilityMaxList= dailyWeather?.precipitationProbabilityMax;
    final uvIndexClearSkyMaxList= dailyWeather?.uvIndexClearSkyMax;

    final weekWeatherEntities = List<WeekWeatherEntity>.empty(growable: true);
    if(timeList != null &&
        temperatureMaxList != null &&
        temperatureMinList != null &&
        precipitationProbabilityMaxList != null &&
        uvIndexClearSkyMaxList != null &&
        timeList.length == temperatureMaxList.length &&
        timeList.length == temperatureMinList.length &&
        timeList.length == precipitationProbabilityMaxList.length &&
        timeList.length == uvIndexClearSkyMaxList.length) {

    for(var i = 0; i < timeList.length; i++) {
      weekWeatherEntities.add(WeekWeatherEntity(
        dateTime: timeList[i].toString(),
        precipitationProbabilityMaxUnits: dailyUnits?.precipitationProbabilityMax ?? '',
        temperatureUnits: dailyUnits?.temperatureMaxUnits ?? '',
        temperatureMax: temperatureMaxList[i],
        temperatureMin: temperatureMinList[i],
        uvIndexClearSkyMax: uvIndexClearSkyMaxList[i],
        precipitationProbabilityMax: precipitationProbabilityMaxList[i],
      ));
    }
    }
    return weekWeatherEntities;

  }
}


class WeatherMappers {
  final _weatherResponseToTodayWeatherEntityMapper = _TodayWeatherMapper();
  final _weatherResponseToWeekWeatherEntityMapper = _WeekWeatherMapper();

  TodayWeatherEntity mapResponseToTodayWeatherEntity(TodayWeatherResponse response) =>
      _weatherResponseToTodayWeatherEntityMapper.map(response);

  List<WeekWeatherEntity> mapResponseToWeekWeatherEntity(WeekWeatherResponse response) =>
      _weatherResponseToWeekWeatherEntityMapper.map(response);
}
