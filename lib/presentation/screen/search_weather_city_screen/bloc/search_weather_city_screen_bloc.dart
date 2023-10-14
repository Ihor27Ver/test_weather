import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:test_task_weather/core/arch/bloc/base_bloc.dart';
import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/core/di/services.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/domain/usecase/get_time_zone_use_case.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_imports.dart';

class SearchWeatherCityScreenBloc extends BaseBloc<SearchWeatherCityScreenEvent,
    SearchWeatherCityScreenState, SearchWeatherCityScreenSR> {
  final GetTimeZoneUseCase _getTimeZoneUseCase =
      GetIt.I.get<GetTimeZoneUseCase>();

  SearchWeatherCityScreenBloc(
      {required WeatherDetailsScreenParam weatherDetailsScreenParam})
      : super(SearchWeatherCityScreenState.data(
            selectedCity: weatherDetailsScreenParam.cityName ?? '')) {
    on<SearchWeatherCityScreenEventInit>(_onInit);
    on<SearchWeatherCityScreenEventSelectedCity>(_onSelectedCity);
    add(SearchWeatherCityScreenEvent.init(
        weatherDetailsScreenParam: weatherDetailsScreenParam));
  }

  Future<FutureOr<void>> _onInit(
    SearchWeatherCityScreenEventInit event,
    Emitter<SearchWeatherCityScreenState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      selectedCity: event.weatherDetailsScreenParam.cityName ?? '',
    ));
    final latitude = event.weatherDetailsScreenParam.latitude ?? -1;
    final longitude = event.weatherDetailsScreenParam.longitude ?? -1;

    if (event.weatherDetailsScreenParam.cityName != null &&
        event.weatherDetailsScreenParam.cityName!.isNotEmpty &&
        latitude != -1 &&
        longitude != -1) {
      final cityLatLng = LatLng(latitude, longitude);
      final result = await _getTimeZoneUseCase(latLng: cityLatLng);
      await result.when(success: (data) async {
        if (data.timeZoneId != null && data.timeZoneId!.isNotEmpty) {
          final weekWeatherEntityList = await weatherService().getWeekWeather(
              latLng: cityLatLng, timeZone: data.timeZoneId ?? '');
          logger.i('weekWeatherEntityList:$weekWeatherEntityList');
          emit(state.copyWith(
            weekWeatherEntityList: weekWeatherEntityList,
          ));
        }
      }, error: (failure) {
        onFailure(failure);
      });
    } else {
      emit(state.copyWith(weekWeatherEntityList: []));
    }

    emit(state.copyWith(isLoading: false));
  }

  Future<FutureOr<void>> _onSelectedCity(
      SearchWeatherCityScreenEventSelectedCity event,
      Emitter<SearchWeatherCityScreenState> emit) async {
    final weatherDetailsScreenParam = event.weatherDetailsScreenParam;

    emit(state.copyWith(
      isLoading: true,
      selectedCity: weatherDetailsScreenParam.cityName ?? '',
    ));

    var latitude = -1.0;
    var longitude = -1.0;

    if (weatherDetailsScreenParam.latitude != null &&
        weatherDetailsScreenParam.longitude != null) {
      latitude = weatherDetailsScreenParam.latitude ?? -1.0;
      longitude = weatherDetailsScreenParam.longitude ?? -1.0;
    } else {
      final location =
          await _getCoordinates(weatherDetailsScreenParam.cityName ?? '');
      if (location.isNotEmpty) {
        latitude = location.first.latitude;
        longitude = location.first.longitude;
      }
    }

    if (event.weatherDetailsScreenParam.cityName != null &&
        event.weatherDetailsScreenParam.cityName!.isNotEmpty &&
        latitude != -1 &&
        longitude != -1) {
      final cityLatLng = LatLng(latitude, longitude);
      final result = await _getTimeZoneUseCase(latLng: cityLatLng);
      await result.when(success: (data) async {
        if (data.timeZoneId != null && data.timeZoneId!.isNotEmpty) {
          final weekWeatherEntityList = await weatherService().getWeekWeather(
              latLng: cityLatLng, timeZone: data.timeZoneId ?? '');
          logger.i('_onSelectedCity:$weekWeatherEntityList');
          emit(state.copyWith(
            weekWeatherEntityList: weekWeatherEntityList,
          ));
        }
      }, error: (failure) {
        onFailure(failure);
      });
    }

    emit(state.copyWith(
      isLoading: false,
    ));
  }

  Future<List<Location>> _getCoordinates(String address) async {
    try {
      final locations = await locationFromAddress(address);
      if (locations.isNotEmpty) {
        return locations;
      } else {
        return List<Location>.empty();
      }
    } on Exception catch (e) {
      print('Error: $e');
      return List<Location>.empty();
    }
  }
}
