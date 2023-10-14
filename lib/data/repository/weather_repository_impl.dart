import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/data/remote/base/map_common_server_error.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/core/arch/domain/entity/failure/api_failure.dart';
import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/core/extension/logger_extension.dart';
import 'package:test_task_weather/data/mapper/time_zone/time_zone_mapper.dart';

import 'package:test_task_weather/data/mapper/weather/weather_mapper.dart';
import 'package:test_task_weather/data/source/remote/weather/weather_source.dart';
import 'package:test_task_weather/domain/entity/time_zone/time_zone_entity.dart';
import 'package:test_task_weather/domain/entity/weather/today_weather/today_weather_entity.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';

import 'package:test_task_weather/domain/repository/weather_repository.dart';





class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherSource _weatherSource;

  final _weatherMappers = WeatherMappers();
  final _tomeZoneMappers =TimeZoneMappers();


  WeatherRepositoryImpl(
    this._weatherSource,
  );

  @override
  Future<Result<TodayWeatherEntity>> getTodayWeather({required LatLng latLng}) async {
    try {
      final response = await _weatherSource.getTodayWeather(latLng:latLng);
      if (response.isSuccess()) {
        final entities = _weatherMappers.mapResponseToTodayWeatherEntity(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e, trace) {
      logger.crash(reason: 'getTodayWeather', error: e, stackTrace: trace);
      //TODO make repository failure
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<TimeZoneEntity>> getTimeZone({required LatLng latLng}) async {
    try {
      final response = await _weatherSource.getTimeZone(latLng:latLng);
      if (response.isSuccess()) {
        final entities = _tomeZoneMappers.mapResponseToTimeZoneEntity(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e, trace) {
      logger.crash(reason: 'getTimeZone', error: e, stackTrace: trace);
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<List<WeekWeatherEntity>>> getWeekWeather({required LatLng latLng, required String timeZone}) async {
    try {
      final response = await _weatherSource.getWeekWeather(latLng:latLng,timeZone: timeZone);
      if (response.isSuccess()) {
        final entities = _weatherMappers.mapResponseToWeekWeatherEntity(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e, trace) {
      logger.crash(reason: 'getWeekWeather', error: e, stackTrace: trace);
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }
}
