//@formatter:off

import 'package:go_router/go_router.dart';

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
  static String get weatherDetailsScreen => _weatherDetails;
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
          path: _weatherDetails,
          name: 'SearchWeatherCityScreen',
          builder: (context, state) => const WeatherDetailsScreen(),
        ),
        //{routes end}
      ],
    );
  }
}
