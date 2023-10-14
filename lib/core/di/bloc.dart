import 'package:get_it/get_it.dart';

import 'package:test_task_weather/app/bloc/app_bloc_imports.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/presentation/screen/home_screen/bloc/home_screen_imports.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_bloc.dart';

void registerBloc(GetIt getIt) {
  getIt
    ..registerFactory<SearchWeatherCityScreenBloc>(
        ()=>SearchWeatherCityScreenBloc(weatherDetailsScreenParam:WeatherDetailsScreenParam.empty()))
    ..registerFactory<AppBloc>(AppBloc.new)
    ..registerFactory<HomeScreenBloc>(HomeScreenBloc.new);
}
