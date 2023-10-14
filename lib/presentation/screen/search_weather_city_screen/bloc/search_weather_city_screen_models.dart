import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:test_task_weather/domain/entity/weather/week_weather/week_weather_entity.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';

part 'search_weather_city_screen_models.freezed.dart';

@freezed
class SearchWeatherCityScreenEvent with _$SearchWeatherCityScreenEvent {
  const factory SearchWeatherCityScreenEvent.init({required WeatherDetailsScreenParam weatherDetailsScreenParam}) =
      SearchWeatherCityScreenEventInit;
  const factory SearchWeatherCityScreenEvent.selectedCity({required  WeatherDetailsScreenParam weatherDetailsScreenParam }) =
  SearchWeatherCityScreenEventSelectedCity;
}

@freezed
class SearchWeatherCityScreenSR with _$SearchWeatherCityScreenSR {
  const factory SearchWeatherCityScreenSR.loadFinished() = _LoadFinished;
}



@freezed
class SearchWeatherCityScreenState with _$SearchWeatherCityScreenState {
  SearchWeatherCityScreenStateData get data => this as SearchWeatherCityScreenStateData;

  const SearchWeatherCityScreenState._();

  factory SearchWeatherCityScreenState.data({
    required String selectedCity,
    @Default([]) List<WeekWeatherEntity> weekWeatherEntityList,
    @Default(false) bool isLoading,
  }) = SearchWeatherCityScreenStateData;
}
