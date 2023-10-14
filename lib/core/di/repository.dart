import 'package:get_it/get_it.dart';
import 'package:test_task_weather/data/repository/weather_repository_impl.dart';
import 'package:test_task_weather/data/source/remote/weather/weather_source.dart';
import 'package:test_task_weather/domain/repository/weather_repository.dart';



void registerRepositories(GetIt getIt) {
  getIt
    .registerSingleton<WeatherRepository>(
      WeatherRepositoryImpl(getIt<WeatherSource>()),
    );

}

WeatherRepository get  weatherRepository => GetIt.I.get<WeatherRepository>();
