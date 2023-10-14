import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';

import 'package:test_task_weather/domain/entity/weather/today_weather/today_weather_entity.dart';
import 'package:test_task_weather/domain/repository/weather_repository.dart';

class GetTodayWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetTodayWeatherUseCase(this._weatherRepository);

  Future<Result<TodayWeatherEntity>> call({required LatLng latLng}) async {
    return _weatherRepository.getTodayWeather(latLng:latLng);
  }
}
