import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/core/di/injection.dart';
import 'package:test_task_weather/core/di/services.dart';

class AppInitialization {
  static final AppInitialization _instance =
      AppInitialization._privateConstructor();

  static AppInitialization get I => _instance;

  AppInitialization._privateConstructor();

  Future<void> initApp() async {
    //TODO init firebase / Crashlytics / Messaging

    initializeDi(GetIt.I);
    await _initializeDatabase();
    logger.d('APP Init: done');
  }

  Future<void> _initializeDatabase() async {
    //TODO init databases here
  }
}
