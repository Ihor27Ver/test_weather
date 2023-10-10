//@formatter:off

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:test_task_weather/presentation/screen/home_screen.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/search_weather_city_screen.dart';

//{imports end}

class AppRouter {
  static const _initialLocation = '/';
  static const _home = '/';
  static const _searchWeatherCity = '/search_weather_city';
  //{consts end}

  static final AppRouter _instance = AppRouter._privateConstructor();
  static late GoRouter router;

  static String get homeScreen => _home;
  static String get searchWeatherCityScreen => _searchWeatherCity;
  //{getters end}

  AppRouter._privateConstructor() {
    _initialize();
  }

  factory AppRouter.init() {
    return _instance;
  }

  void _initialize({String initialLocation = _initialLocation}) {
    router = GoRouter(
      initialLocation: initialLocation,
      routes: <GoRoute>[
        GoRoute(
          path: _home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: _searchWeatherCity,
          name: 'SearchWeatherCityScreen',
          builder: (context, state) => const SearchWeatherCityScreen(),
        ),
        //{routes end}
      ],
    );
  }
}
