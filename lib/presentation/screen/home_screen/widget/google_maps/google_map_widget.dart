import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({Key? key}) : super(key: key);

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {

  final Completer<GoogleMapController> _controller = Completer();
  final Completer<Position> _initPosition = Completer();
  late String _mapStyle;

  @override
  void initState() {
    rootBundle.loadString('assets/map/map_style.txt').then((string) {
      _mapStyle = string;
    });
    _getInitialPosition();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
         -33.8698439,
          151.2082848,
        ),
        zoom: 14.4746,
      ),
      mapType: MapType.normal,
      onMapCreated: (controller) async {
        await _initializeLocation(controller);
        await controller.setMapStyle(_mapStyle);
      },

      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }

  Future<Position?> _getCurrentLocation() async {
    await Geolocator.requestPermission();
    final locationPermission = await Geolocator.checkPermission();
    if(locationPermission == LocationPermission.denied){
      return null;
    }

    final lastLocation = await Geolocator.getLastKnownPosition();
    if (lastLocation == null) {
      return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
    } else {
      return lastLocation;
    }
  }

  Future<void> _getInitialPosition() async {
    final isLocationEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isLocationEnabled) {
      await Geolocator.openLocationSettings();
      return;
    }
    final locationPermission = await Geolocator.checkPermission();
    switch (locationPermission) {
      case LocationPermission.denied:
        {
          final requestResult = await Geolocator.requestPermission();
          if (requestResult == LocationPermission.denied ||
              requestResult == LocationPermission.deniedForever) {
            return;
          }
          break;
        }
      case LocationPermission.deniedForever:
        {
          await Geolocator.openLocationSettings();
          return;
        }
      default:
        break;
    }
    final location = await Geolocator.getCurrentPosition();
    _initPosition.complete(location);
  }

  Future<void> _initializeLocation(
      GoogleMapController controller,
      ) async {
    final currentLocation = await _getCurrentLocation();
    if (currentLocation != null) {
      final cameraPosition = CameraPosition(
        target: LatLng(
          currentLocation.latitude,
          currentLocation.longitude,
        ),
        zoom: 15,
      );
      Future.delayed(const Duration(seconds: 2), () {
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            cameraPosition,
          ),
        );
      });

    }
  }

}
