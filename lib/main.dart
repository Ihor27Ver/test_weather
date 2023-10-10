//@formatter:off

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_task_weather/app/app.dart';
import 'package:test_task_weather/app/banned_app.dart';
import 'package:test_task_weather/core/app/app_initialization.dart';
import 'package:test_task_weather/core/arch/bloc/app_bloc_observer.dart';
import 'package:test_task_weather/core/di/services.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await AppInitialization.I.initApp();

      // await SystemChrome.setPreferredOrientations([
      //   //DeviceOrientation.portraitUp,
      //   //DeviceOrientation.portraitDown,
      //   //DeviceOrientation.landscapeLeft,
      //   //DeviceOrientation.landscapeRight
      // ]);

      Bloc.observer = AppBlocObserver();

      final isAllowedToUseApp = await environmentService().initialize();
      if (isAllowedToUseApp) {
        runApp(const App());
      } else {
        runApp(const BannedApp());
      }
    },
    (error, stackTrace) {
      if (kDebugMode) {
        print('runZonedGuarded: Caught error in root zone.\n$error');
        print(stackTrace);
      }
      //there we can add FirebaseCrashlytics recordError method
    },
  )?.catchError((e, trace) {
    if (kDebugMode) {
      print('ERROR: $e');
      print(trace);
    }
    exit(-1);
  });
}
