import 'package:get_it/get_it.dart';
import 'package:test_task_weather/domain/repository/weather_repository.dart';
import 'package:test_task_weather/domain/usecase/get_time_zone_use_case.dart';
import 'package:test_task_weather/domain/usecase/get_today_weater_use_case.dart';
import 'package:test_task_weather/domain/usecase/get_week_weater_use_case.dart';


void registerUseCases(GetIt getIt) {
  getIt..registerSingleton<GetTodayWeatherUseCase>(
    GetTodayWeatherUseCase(getIt<WeatherRepository>()),
  )..registerSingleton<GetTimeZoneUseCase>(
    GetTimeZoneUseCase(getIt<WeatherRepository>()),
  )..registerSingleton<GetWeekWeatherUseCase>(
    GetWeekWeatherUseCase(getIt<WeatherRepository>()),
  );


}
