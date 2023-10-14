import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/time_zone/time_zone_entity.dart';
import 'package:test_task_weather/domain/repository/weather_repository.dart';

class GetTimeZoneUseCase {
  final WeatherRepository _weatherRepository;

  GetTimeZoneUseCase(this._weatherRepository);

  Future<Result<TimeZoneEntity>> call({required LatLng latLng}) async {
    return _weatherRepository.getTimeZone(latLng:latLng,);
  }
}
