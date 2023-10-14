//@formatter:off

import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/arch/data/remote/clients/dio/api_client.dart';
import 'package:test_task_weather/core/arch/data/remote/clients/dio/dio_const.dart';
import 'package:test_task_weather/core/arch/data/remote/clients/dio/dio_request_processor/dio_request_processor.dart';

import 'package:test_task_weather/data/source/remote/weather/weather_source.dart';
import 'package:test_task_weather/data/source/remote/weather/weather_source_impl.dart';

//{imports end}

void registerSources(GetIt getIt) {
  getIt
    .registerSingleton<WeatherSource>(WeatherSourceImpl(
      getIt.get<ApiClient>(instanceName: DioConst.weatherApiInstance),
      getIt.get<DioRequestProcessor>(),
    )); //{sources end}
}

WeatherSource get weatherSource => GetIt.I.get<WeatherSource>();
