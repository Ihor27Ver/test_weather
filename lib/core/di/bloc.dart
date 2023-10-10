import 'package:get_it/get_it.dart';

import 'package:test_task_weather/app/bloc/app_bloc_imports.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_bloc.dart';

void registerBloc(GetIt getIt) {
  getIt.registerFactory<SearchWeatherCityScreenBloc>(
      SearchWeatherCityScreenBloc.new);
  getIt.registerFactory<AppBloc>(AppBloc.new);
}
