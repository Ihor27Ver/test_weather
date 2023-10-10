import 'package:get_it/get_it.dart';

import 'package:test_task_weather/domain/repository/time_repository.dart';
import 'package:test_task_weather/domain/usecase/get_time_use_case.dart';

void registerUseCases(GetIt getIt) {
  getIt.registerSingleton<GetTimeUseCase>(
    GetTimeUseCase(getIt<TimeRepository>()),
  );
}
