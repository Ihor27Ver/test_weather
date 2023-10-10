import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/app/app_service.dart';
import 'package:test_task_weather/domain/service/session_service/session_service.dart';

void registerServices(GetIt getIt) {
  getIt
    ..registerSingleton<SessionService>(SessionService())
    ..registerSingleton<AppService>(AppService());
}

SessionService sessionService() => GetIt.I.get<SessionService>();

AppService environmentService() => GetIt.I.get<AppService>();
