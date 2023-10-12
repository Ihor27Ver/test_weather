import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_weather/core/arch/bloc/base_bloc.dart';
import 'package:test_task_weather/presentation/screen/home_screen/bloc/home_screen_imports.dart';

class HomeScreenBloc
    extends BaseBloc<HomeScreenEvent, HomeScreenState, HomeScreenSR> {
  HomeScreenBloc() : super(HomeScreenState.data()) {
    on<HomeScreenEvent>(_onInit);
    add(const HomeScreenEvent.init());
  }

  FutureOr<void> _onInit(
    HomeScreenEvent event,
    Emitter<HomeScreenState> emit,
  ) {
    emit(state.copyWith(isLoading: true));


    emit(state.copyWith(isLoading: false));
  }
}
