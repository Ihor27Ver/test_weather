import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/app/app_service.dart';
import 'package:test_task_weather/domain/service/weather_service/weather_service.dart';

void registerServices(GetIt getIt) {
  getIt
    ..registerSingleton<AppService>(AppService())
    ..registerSingleton<WeatherService>(WeatherService());
}

AppService environmentService() => GetIt.I.get<AppService>();

WeatherService weatherService() => GetIt.I.get<WeatherService>();
