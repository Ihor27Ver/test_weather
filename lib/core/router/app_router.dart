//@formatter:off

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';

import 'package:test_task_weather/presentation/screen/home_screen/home_screen.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/weather_details_screen.dart';



//{imports end}

class AppRouter {
  static const _initialLocation = '/';
  static const _home = '/';
  static const _weatherDetails = '/search_weather_city';

  //{consts end}

  static final AppRouter _instance = AppRouter._privateConstructor();
  static late GoRouter router;

  static String get homeScreen => _home;


  static String get weatherDetailsPage => 'WeatherDetailsPage ';

  //{getters end}

  AppRouter._privateConstructor() {
    _initialize();
  }
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
  GlobalKey<NavigatorState>();

  static NavigatorState? rootNavigator() => _rootNavigatorKey.currentState;

  factory AppRouter.init() {
    return _instance;
  }

  void _initialize({String initialLocation = _initialLocation}) {
    router = GoRouter(
      initialLocation: initialLocation,
      routes: <GoRoute>[
        GoRoute(
          path: _home,
          name: homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: _weatherDetails,
          name: weatherDetailsPage,
          builder: (context, state) =>  WeatherDetailsScreen(weatherDetailsScreenParam:state.extra as WeatherDetailsScreenParam),
        ),
        //{routes end}
      ],
    );
  }
}
