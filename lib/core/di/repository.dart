import 'package:get_it/get_it.dart';

import 'package:test_task_weather/core/di/source.dart';
import 'package:test_task_weather/data/repository/time_repository_impl.dart';
import 'package:test_task_weather/data/repository/token_repository_impl.dart';
import 'package:test_task_weather/data/source/local/secure_storage/secure_storage_source.dart';
import 'package:test_task_weather/data/source/remote/time/time_source.dart';
import 'package:test_task_weather/domain/repository/time_repository.dart';
import 'package:test_task_weather/domain/repository/token_repository.dart';

//{imports end}

void registerRepositories(GetIt getIt) {
  getIt
    ..registerSingleton<TimeRepository>(
      TimeRepositoryImpl(getIt<TimeSource>()),
    )
    ..registerSingleton<TokenRepository>(
      TokenRepositoryImpl(getIt<SecureStorageSource>()),
    ); //{repositories end}
}

TokenRepository get tokenRepository => GetIt.I.get<TokenRepository>();
