import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/core/di/bloc.dart';
import 'package:test_task_weather/core/di/local.dart';
import 'package:test_task_weather/core/di/remote.dart';
import 'package:test_task_weather/core/di/repository.dart';
import 'package:test_task_weather/core/di/services.dart';
import 'package:test_task_weather/core/di/source.dart';
import 'package:test_task_weather/core/di/usecase.dart';

void initializeDi(GetIt getIt) {
  registerLocal(getIt);
  registerRemote(getIt);
  registerSources(getIt);
  registerRepositories(getIt);
  registerUseCases(getIt);
  registerServices(getIt);
  registerApp(getIt);

  registerBloc(getIt);
}
