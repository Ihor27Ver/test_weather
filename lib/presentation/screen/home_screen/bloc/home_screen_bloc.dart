import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/arch/bloc/base_bloc.dart';
import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/presentation/screen/home_screen/bloc/home_screen_imports.dart';
import 'package:test_task_weather/util/extension/geolocator_extension.dart';

class HomeScreenBloc
    extends BaseBloc<HomeScreenEvent, HomeScreenState, HomeScreenSR> {


  HomeScreenBloc() : super(HomeScreenState.data()) {
    on<HomeScreenEvent>(_onInit);
    add(const HomeScreenEvent.init());
  }

  Future<FutureOr<void>> _onInit(
    HomeScreenEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final markers = <Marker>{};
    var mapStyle = '';
    await rootBundle.loadString('assets/map/map_style.txt').then((string) {
      mapStyle = string;
    });
    final userPosition = await _getInitialPosition();
    if (userPosition != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('userPosition'),
          position: LatLng(userPosition.latitude, userPosition.longitude),
          infoWindow: const InfoWindow(title: 'My Position'),
        ),
      );
    }

    emit(state.copyWith(
      myPosition: userPosition,
      mapStyle: mapStyle,
    ));

    emit(state.copyWith(isLoading: false));
  }

  Future<Position?> _getInitialPosition() async {
    final geolocator = Geolocator();
    final location = await geolocator.getInitialPosition();

    return location;
  }


}
