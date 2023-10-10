import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:test_task_weather/core/arch/bloc/base_block_state.dart';
import 'package:test_task_weather/presentation/screen/search_weather_city_screen/bloc/search_weather_city_screen_imports.dart';

class SearchWeatherCityScreen extends StatefulWidget {
  const SearchWeatherCityScreen({
    super.key,
  });

  @override
  State<SearchWeatherCityScreen> createState() =>
      _SearchWeatherCityScreenState();
}

class _SearchWeatherCityScreenState extends BaseState<
    SearchWeatherCityScreenState,
    SearchWeatherCityScreenBloc,
    SearchWeatherCityScreenSR,
    SearchWeatherCityScreen> {
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
    return const Center(
      child: Text('SearchWeatherCity screen'),
    );
  }
}
