import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:test_task_weather/core/di/app.dart';

extension GeolocatorExtension on Geolocator {
  Future<Position?> getInitialPosition() async {
    final isLocationEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isLocationEnabled) {
      await Geolocator.openLocationSettings();
    }

    final locationPermission = await Geolocator.checkPermission();
    switch (locationPermission) {
      case LocationPermission.denied:
        {
          final requestResult = await Geolocator.requestPermission();
          if (requestResult == LocationPermission.denied ||
              requestResult == LocationPermission.deniedForever) {
            return null;
          }
        }
      case LocationPermission.deniedForever:
        {
          await Geolocator.openLocationSettings();
        }
      default:

    }
    Position? location;
    if (locationPermission != LocationPermission.denied ||
        locationPermission != LocationPermission.deniedForever) {
      location = await Geolocator.getCurrentPosition();
    }
    return location;
  }
}
