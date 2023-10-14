import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';

import 'package:test_task_weather/core/arch/bloc/base_block_state.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/presentation/screen/home_screen/bloc/home_screen_imports.dart';
import 'package:test_task_weather/presentation/screen/home_screen/widget/google_maps/google_map_widget.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';

import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';

import 'package:test_task_weather/presentation/widgets/actions/row_button.dart';
import 'package:test_task_weather/presentation/widgets/app_standard_progress.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreenState, HomeScreenBloc,
    HomeScreenSR, HomeScreen> {
  @override
  @override
  Widget buildWidget(BuildContext context) {
    return srObserver(
      context: context,
      child: Scaffold(
        body: SizedBox.expand(
          child: blocConsumer(
            stateListener: (state) => _buildMainContainer(context, state),
          ),
        ),
      ),
      onSR: _onSingleResult,
    );
  }

  void _onSingleResult(BuildContext context, HomeScreenSR singleResult) {
    singleResult.when(
      loadFinished: () {},
    );
  }

  Widget _buildMainContainer(
    BuildContext context,
    HomeScreenState state,
  ) {
    return state.isLoading
        ? const Center(
            child: AppStandardProgress(
              color: AppColors.bgLight,
            ),
          )
        : Stack(
            children: [
              Positioned.fill(
                child: GoogleMapWidget(
                  userPosition: state.myPosition,
                  mapStyle: state.mapStyle,
                  marker: state.markers,
                ),
              ),
              RowButton(
                weatherDetailsParam: WeatherDetailsScreenParam.empty(),
              ),
              Positioned(
                top: 42.h,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Text(
                    S.of(context).location,
                    style: context.appTextStyles.fs28
                        ?.copyWith(color: AppColors.greenDark),
                  ),
                ),
              ),
            ],
          );
  }
}
