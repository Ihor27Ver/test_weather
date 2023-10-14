import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_task_weather/core/assets.dart';
import 'package:test_task_weather/core/di/services.dart';
import 'package:test_task_weather/core/router/app_router.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';

import 'package:test_task_weather/util/custom_marker.dart';


class GoogleMapWidget extends StatefulWidget {
  final Position? userPosition;
  final String mapStyle;
  final Set<Marker> marker;

  const GoogleMapWidget(
      {required this.mapStyle,
      required this.marker,
      super.key,
      this.userPosition});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  late Position? _userPosition;

  final Set<Marker> _markers = <Marker>{};
  late BitmapDescriptor _marker;
  late String _mapStyle;

  @override
  void initState() {
    _userPosition = widget.userPosition;
    _mapStyle = widget.mapStyle;
    _markers.addAll(widget.marker);

    _getCustomIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onLongPress: (latLng) {
        _handleLongPress(latLng, context);
      },
      myLocationEnabled: true,
      initialCameraPosition: CameraPosition(
        target: LatLng(
          _userPosition?.latitude ?? -33.8698439,
          _userPosition?.longitude ?? 151.2082848,
        ),
        zoom: 14,
      ),
      markers: _markers,
      mapType: MapType.normal,
      onMapCreated: (controller) async {
        if (_mapStyle.isNotEmpty) {
          await controller.setMapStyle(_mapStyle);
        }
      },
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }

  Future<void> _handleLongPress(LatLng latLng, BuildContext context) async {
    final todayWeatherEntity =
        await weatherService().getTodayWeather(latLng: latLng);
    final placeName = await getPlaceName(latLng);

    if (context.mounted) {
      setState(() {
        _markers
          ..clear()
          ..add(Marker(
            icon: _marker,
            markerId: MarkerId(latLng.toString()),
            position: latLng,
            infoWindow: InfoWindow(
                title: placeName,
                snippet:
                    ' ${todayWeatherEntity.temperature} ${todayWeatherEntity.temperatureUnits}',
                onTap: () {
                  context.goNamed(AppRouter.weatherDetailsPage,
                      extra:WeatherDetailsScreenParam( cityName: placeName, latitude: latLng.latitude, longitude: latLng.longitude,) );
                }),
          ));
      });
    }
  }

  Future<void> _getCustomIcon() async {
    final markIcons = await CustomMarker().getImages(Assets.icMarker, 100);
    _marker = BitmapDescriptor.fromBytes(markIcons);
  }

  Future<String> getPlaceName(LatLng latLng) async {
    try {
      final placeMarks =
          await placemarkFromCoordinates(latLng.latitude, latLng.longitude);
      if (placeMarks.isNotEmpty) {
        final place = placeMarks[0];
        return '${place.locality}, ${place.country}';
      }
      return 'No address available';
    } catch (e) {
      print(e);
      return 'Error fetching address';
    }
  }
}
