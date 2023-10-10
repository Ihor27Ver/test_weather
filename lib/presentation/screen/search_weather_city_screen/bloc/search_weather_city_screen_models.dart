import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_weather_city_screen_models.freezed.dart';

@freezed
class SearchWeatherCityScreenEvent with _$SearchWeatherCityScreenEvent {
  const factory SearchWeatherCityScreenEvent.init() =
      SearchWeatherCityScreenEventInit;
}

@freezed
class SearchWeatherCityScreenSR with _$SearchWeatherCityScreenSR {
  const factory SearchWeatherCityScreenSR.loadFinished() = _LoadFinished;
}

class SearchWeatherCityScreenState {}
