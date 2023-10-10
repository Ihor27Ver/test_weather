import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_task_weather/core/arch/bloc/base_bloc.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_imports.dart';

class SearchWeatherCityScreenBloc extends BaseBloc<SearchWeatherCityScreenEvent,
    SearchWeatherCityScreenState, SearchWeatherCityScreenSR> {
  SearchWeatherCityScreenBloc() : super(SearchWeatherCityScreenState()) {
    on<SearchWeatherCityScreenEventInit>(_onInit);
    add(const SearchWeatherCityScreenEvent.init());
  }

  FutureOr<void> _onInit(
    SearchWeatherCityScreenEventInit event,
    Emitter<SearchWeatherCityScreenState> emit,
  ) {}
}
