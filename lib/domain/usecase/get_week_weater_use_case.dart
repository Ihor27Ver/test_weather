import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/domain/repository/weather_repository.dart';

class GetWeekWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetWeekWeatherUseCase(this._weatherRepository);

  Future<Result<List<WeekWeatherEntity>>> call({required LatLng latLng,required String timeZone}) async {
    return _weatherRepository.getWeekWeather(latLng:latLng,timeZone:timeZone);
  }
}
