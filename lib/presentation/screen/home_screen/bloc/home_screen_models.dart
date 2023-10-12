import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'home_screen_models.freezed.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.init() = HomeScreenEventInit;
  const factory HomeScreenEvent.addMarker() = HomeScreenEventAddMarker;
}

@freezed
class HomeScreenSR with _$HomeScreenSR {
  const factory HomeScreenSR.loadFinished() = _LoadFinished;
}

@freezed
class HomeScreenState with _$HomeScreenState {
  HomeScreenStateData get data => this as HomeScreenStateData;

  const HomeScreenState._();

  factory HomeScreenState.data({
    Position? myPosition,
    @Default({}) Set<Marker> markers,
    @Default(false) bool isLoading,
  }) = HomeScreenStateData;
}
