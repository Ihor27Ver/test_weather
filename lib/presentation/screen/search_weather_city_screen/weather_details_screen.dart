import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:test_task_weather/core/arch/bloc/base_block_state.dart';

import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_imports.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/widget/address_input.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/widget/week_day_list_view.dart';
import 'package:test_task_weather/presentation/widgets/actions/row_button.dart';
import 'package:test_task_weather/presentation/widgets/app_standard_progress.dart';

class WeatherDetailsScreen extends StatefulWidget {
  final WeatherDetailsScreenParam weatherDetailsScreenParam;

  const WeatherDetailsScreen({
    required this.weatherDetailsScreenParam,
    super.key,
  });

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends BaseState<
    SearchWeatherCityScreenState,
    SearchWeatherCityScreenBloc,
    SearchWeatherCityScreenSR,
    WeatherDetailsScreen> {
  @override
  SearchWeatherCityScreenBloc createBloc() => SearchWeatherCityScreenBloc(
        weatherDetailsScreenParam: widget.weatherDetailsScreenParam,
      );

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

  void _onSingleResult(
      BuildContext context, SearchWeatherCityScreenSR singleResult) {
    singleResult.when(
      loadFinished: () {},
    );
  }

  Widget _buildMainContainer(
    BuildContext context,
    SearchWeatherCityScreenState state,
  ) {
    return Stack(
      children: [
        Positioned.fill(
          child: Center(
            child: !state.isLoading
                ? WeekDayListView(
                    listWeekWeatherEntity: state.weekWeatherEntityList,
                  )
                : const AppStandardProgress(),
          ),
        ),
        Positioned(
          top: 24.h, // Place the Column at the bottom of the Stack
          left: 0.0,
          right: 0.0,
          child: Padding(
            padding: EdgeInsets.only(top: 42.h),
            child: Center(
                child: AddressInput(
              address: state.selectedCity,
              onSelected: (weatherDetailsScreenParam) {
                blocOf(context).add(SearchWeatherCityScreenEventSelectedCity(
                  weatherDetailsScreenParam: weatherDetailsScreenParam,
                ));
              },
            )),
          ),
        ),
        RowButton(
          weatherDetailsParam: WeatherDetailsScreenParam.empty(),
        ),
      ],
    );
  }
}
