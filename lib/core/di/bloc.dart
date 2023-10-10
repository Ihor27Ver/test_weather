import 'package:get_it/get_it.dart';

import 'package:test_task_weather/app/bloc/app_bloc_imports.dart';

void registerBloc(GetIt getIt) {
  getIt.registerFactory<AppBloc>(AppBloc.new);
}
