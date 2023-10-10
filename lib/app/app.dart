//@formatter:off

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'package:test_task_weather/app/bloc/app_bloc_imports.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';
import 'package:test_task_weather/core/arch/bloc/base_block_state.dart';
import 'package:test_task_weather/core/router/app_router.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BaseState<AppScreenState, AppBloc, AppSR, App> {
  Locale? locale;


  @override
  Widget buildWidget(BuildContext context) {
    AppRouter.init();
    return GlobalLoaderOverlay(
      useDefaultLoading: true,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
        return blocConsumer(
          stateListener: (state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                
                
                child: widget ?? const SizedBox(),
                
              );
            },
            scrollBehavior: const CupertinoScrollBehavior(),
            title: '',
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            themeMode: state.themeMode,
            routeInformationProvider: AppRouter.router.routeInformationProvider,
            routeInformationParser: AppRouter.router.routeInformationParser,
            
            routerDelegate: AppRouter.router.routerDelegate,
            
            locale: locale,
            
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            onGenerateTitle: (context) => S.of(context).title,
            

            
          );
          },
          
        );
        },
      ),
    );
  }
}
