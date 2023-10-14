// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_weather_city_screen_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchWeatherCityScreenEvent {
  WeatherDetailsScreenParam get weatherDetailsScreenParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        init,
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        init,
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)? init,
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchWeatherCityScreenEventInit value) init,
    required TResult Function(SearchWeatherCityScreenEventSelectedCity value)
        selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchWeatherCityScreenEventInit value)? init,
    TResult? Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchWeatherCityScreenEventInit value)? init,
    TResult Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchWeatherCityScreenEventCopyWith<SearchWeatherCityScreenEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherCityScreenEventCopyWith<$Res> {
  factory $SearchWeatherCityScreenEventCopyWith(
          SearchWeatherCityScreenEvent value,
          $Res Function(SearchWeatherCityScreenEvent) then) =
      _$SearchWeatherCityScreenEventCopyWithImpl<$Res,
          SearchWeatherCityScreenEvent>;
  @useResult
  $Res call({WeatherDetailsScreenParam weatherDetailsScreenParam});

  $WeatherDetailsScreenParamCopyWith<$Res> get weatherDetailsScreenParam;
}

/// @nodoc
class _$SearchWeatherCityScreenEventCopyWithImpl<$Res,
        $Val extends SearchWeatherCityScreenEvent>
    implements $SearchWeatherCityScreenEventCopyWith<$Res> {
  _$SearchWeatherCityScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherDetailsScreenParam = null,
  }) {
    return _then(_value.copyWith(
      weatherDetailsScreenParam: null == weatherDetailsScreenParam
          ? _value.weatherDetailsScreenParam
          : weatherDetailsScreenParam // ignore: cast_nullable_to_non_nullable
              as WeatherDetailsScreenParam,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDetailsScreenParamCopyWith<$Res> get weatherDetailsScreenParam {
    return $WeatherDetailsScreenParamCopyWith<$Res>(
        _value.weatherDetailsScreenParam, (value) {
      return _then(_value.copyWith(weatherDetailsScreenParam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchWeatherCityScreenEventInitImplCopyWith<$Res>
    implements $SearchWeatherCityScreenEventCopyWith<$Res> {
  factory _$$SearchWeatherCityScreenEventInitImplCopyWith(
          _$SearchWeatherCityScreenEventInitImpl value,
          $Res Function(_$SearchWeatherCityScreenEventInitImpl) then) =
      __$$SearchWeatherCityScreenEventInitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherDetailsScreenParam weatherDetailsScreenParam});

  @override
  $WeatherDetailsScreenParamCopyWith<$Res> get weatherDetailsScreenParam;
}

/// @nodoc
class __$$SearchWeatherCityScreenEventInitImplCopyWithImpl<$Res>
    extends _$SearchWeatherCityScreenEventCopyWithImpl<$Res,
        _$SearchWeatherCityScreenEventInitImpl>
    implements _$$SearchWeatherCityScreenEventInitImplCopyWith<$Res> {
  __$$SearchWeatherCityScreenEventInitImplCopyWithImpl(
      _$SearchWeatherCityScreenEventInitImpl _value,
      $Res Function(_$SearchWeatherCityScreenEventInitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherDetailsScreenParam = null,
  }) {
    return _then(_$SearchWeatherCityScreenEventInitImpl(
      weatherDetailsScreenParam: null == weatherDetailsScreenParam
          ? _value.weatherDetailsScreenParam
          : weatherDetailsScreenParam // ignore: cast_nullable_to_non_nullable
              as WeatherDetailsScreenParam,
    ));
  }
}

/// @nodoc

class _$SearchWeatherCityScreenEventInitImpl
    implements SearchWeatherCityScreenEventInit {
  const _$SearchWeatherCityScreenEventInitImpl(
      {required this.weatherDetailsScreenParam});

  @override
  final WeatherDetailsScreenParam weatherDetailsScreenParam;

  @override
  String toString() {
    return 'SearchWeatherCityScreenEvent.init(weatherDetailsScreenParam: $weatherDetailsScreenParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWeatherCityScreenEventInitImpl &&
            (identical(other.weatherDetailsScreenParam,
                    weatherDetailsScreenParam) ||
                other.weatherDetailsScreenParam == weatherDetailsScreenParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherDetailsScreenParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWeatherCityScreenEventInitImplCopyWith<
          _$SearchWeatherCityScreenEventInitImpl>
      get copyWith => __$$SearchWeatherCityScreenEventInitImplCopyWithImpl<
          _$SearchWeatherCityScreenEventInitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        init,
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        selectedCity,
  }) {
    return init(weatherDetailsScreenParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        init,
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
  }) {
    return init?.call(weatherDetailsScreenParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)? init,
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(weatherDetailsScreenParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchWeatherCityScreenEventInit value) init,
    required TResult Function(SearchWeatherCityScreenEventSelectedCity value)
        selectedCity,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchWeatherCityScreenEventInit value)? init,
    TResult? Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchWeatherCityScreenEventInit value)? init,
    TResult Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SearchWeatherCityScreenEventInit
    implements SearchWeatherCityScreenEvent {
  const factory SearchWeatherCityScreenEventInit(
      {required final WeatherDetailsScreenParam
          weatherDetailsScreenParam}) = _$SearchWeatherCityScreenEventInitImpl;

  @override
  WeatherDetailsScreenParam get weatherDetailsScreenParam;
  @override
  @JsonKey(ignore: true)
  _$$SearchWeatherCityScreenEventInitImplCopyWith<
          _$SearchWeatherCityScreenEventInitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchWeatherCityScreenEventSelectedCityImplCopyWith<$Res>
    implements $SearchWeatherCityScreenEventCopyWith<$Res> {
  factory _$$SearchWeatherCityScreenEventSelectedCityImplCopyWith(
          _$SearchWeatherCityScreenEventSelectedCityImpl value,
          $Res Function(_$SearchWeatherCityScreenEventSelectedCityImpl) then) =
      __$$SearchWeatherCityScreenEventSelectedCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherDetailsScreenParam weatherDetailsScreenParam});

  @override
  $WeatherDetailsScreenParamCopyWith<$Res> get weatherDetailsScreenParam;
}

/// @nodoc
class __$$SearchWeatherCityScreenEventSelectedCityImplCopyWithImpl<$Res>
    extends _$SearchWeatherCityScreenEventCopyWithImpl<$Res,
        _$SearchWeatherCityScreenEventSelectedCityImpl>
    implements _$$SearchWeatherCityScreenEventSelectedCityImplCopyWith<$Res> {
  __$$SearchWeatherCityScreenEventSelectedCityImplCopyWithImpl(
      _$SearchWeatherCityScreenEventSelectedCityImpl _value,
      $Res Function(_$SearchWeatherCityScreenEventSelectedCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherDetailsScreenParam = null,
  }) {
    return _then(_$SearchWeatherCityScreenEventSelectedCityImpl(
      weatherDetailsScreenParam: null == weatherDetailsScreenParam
          ? _value.weatherDetailsScreenParam
          : weatherDetailsScreenParam // ignore: cast_nullable_to_non_nullable
              as WeatherDetailsScreenParam,
    ));
  }
}

/// @nodoc

class _$SearchWeatherCityScreenEventSelectedCityImpl
    implements SearchWeatherCityScreenEventSelectedCity {
  const _$SearchWeatherCityScreenEventSelectedCityImpl(
      {required this.weatherDetailsScreenParam});

  @override
  final WeatherDetailsScreenParam weatherDetailsScreenParam;

  @override
  String toString() {
    return 'SearchWeatherCityScreenEvent.selectedCity(weatherDetailsScreenParam: $weatherDetailsScreenParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWeatherCityScreenEventSelectedCityImpl &&
            (identical(other.weatherDetailsScreenParam,
                    weatherDetailsScreenParam) ||
                other.weatherDetailsScreenParam == weatherDetailsScreenParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherDetailsScreenParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWeatherCityScreenEventSelectedCityImplCopyWith<
          _$SearchWeatherCityScreenEventSelectedCityImpl>
      get copyWith =>
          __$$SearchWeatherCityScreenEventSelectedCityImplCopyWithImpl<
              _$SearchWeatherCityScreenEventSelectedCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        init,
    required TResult Function(
            WeatherDetailsScreenParam weatherDetailsScreenParam)
        selectedCity,
  }) {
    return selectedCity(weatherDetailsScreenParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        init,
    TResult? Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
  }) {
    return selectedCity?.call(weatherDetailsScreenParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)? init,
    TResult Function(WeatherDetailsScreenParam weatherDetailsScreenParam)?
        selectedCity,
    required TResult orElse(),
  }) {
    if (selectedCity != null) {
      return selectedCity(weatherDetailsScreenParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchWeatherCityScreenEventInit value) init,
    required TResult Function(SearchWeatherCityScreenEventSelectedCity value)
        selectedCity,
  }) {
    return selectedCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchWeatherCityScreenEventInit value)? init,
    TResult? Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
  }) {
    return selectedCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchWeatherCityScreenEventInit value)? init,
    TResult Function(SearchWeatherCityScreenEventSelectedCity value)?
        selectedCity,
    required TResult orElse(),
  }) {
    if (selectedCity != null) {
      return selectedCity(this);
    }
    return orElse();
  }
}

abstract class SearchWeatherCityScreenEventSelectedCity
    implements SearchWeatherCityScreenEvent {
  const factory SearchWeatherCityScreenEventSelectedCity(
          {required final WeatherDetailsScreenParam
              weatherDetailsScreenParam}) =
      _$SearchWeatherCityScreenEventSelectedCityImpl;

  @override
  WeatherDetailsScreenParam get weatherDetailsScreenParam;
  @override
  @JsonKey(ignore: true)
  _$$SearchWeatherCityScreenEventSelectedCityImplCopyWith<
          _$SearchWeatherCityScreenEventSelectedCityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchWeatherCityScreenSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFinished value) loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFinished value)? loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFinished value)? loadFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherCityScreenSRCopyWith<$Res> {
  factory $SearchWeatherCityScreenSRCopyWith(SearchWeatherCityScreenSR value,
          $Res Function(SearchWeatherCityScreenSR) then) =
      _$SearchWeatherCityScreenSRCopyWithImpl<$Res, SearchWeatherCityScreenSR>;
}

/// @nodoc
class _$SearchWeatherCityScreenSRCopyWithImpl<$Res,
        $Val extends SearchWeatherCityScreenSR>
    implements $SearchWeatherCityScreenSRCopyWith<$Res> {
  _$SearchWeatherCityScreenSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFinishedImplCopyWith<$Res> {
  factory _$$LoadFinishedImplCopyWith(
          _$LoadFinishedImpl value, $Res Function(_$LoadFinishedImpl) then) =
      __$$LoadFinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFinishedImplCopyWithImpl<$Res>
    extends _$SearchWeatherCityScreenSRCopyWithImpl<$Res, _$LoadFinishedImpl>
    implements _$$LoadFinishedImplCopyWith<$Res> {
  __$$LoadFinishedImplCopyWithImpl(
      _$LoadFinishedImpl _value, $Res Function(_$LoadFinishedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFinishedImpl implements _LoadFinished {
  const _$LoadFinishedImpl();

  @override
  String toString() {
    return 'SearchWeatherCityScreenSR.loadFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFinished,
  }) {
    return loadFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFinished,
  }) {
    return loadFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFinished,
    required TResult orElse(),
  }) {
    if (loadFinished != null) {
      return loadFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFinished value) loadFinished,
  }) {
    return loadFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFinished value)? loadFinished,
  }) {
    return loadFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFinished value)? loadFinished,
    required TResult orElse(),
  }) {
    if (loadFinished != null) {
      return loadFinished(this);
    }
    return orElse();
  }
}

abstract class _LoadFinished implements SearchWeatherCityScreenSR {
  const factory _LoadFinished() = _$LoadFinishedImpl;
}

/// @nodoc
mixin _$SearchWeatherCityScreenState {
  String get selectedCity => throw _privateConstructorUsedError;
  List<WeekWeatherEntity> get weekWeatherEntityList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchWeatherCityScreenStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchWeatherCityScreenStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchWeatherCityScreenStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchWeatherCityScreenStateCopyWith<SearchWeatherCityScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherCityScreenStateCopyWith<$Res> {
  factory $SearchWeatherCityScreenStateCopyWith(
          SearchWeatherCityScreenState value,
          $Res Function(SearchWeatherCityScreenState) then) =
      _$SearchWeatherCityScreenStateCopyWithImpl<$Res,
          SearchWeatherCityScreenState>;
  @useResult
  $Res call(
      {String selectedCity,
      List<WeekWeatherEntity> weekWeatherEntityList,
      bool isLoading});
}

/// @nodoc
class _$SearchWeatherCityScreenStateCopyWithImpl<$Res,
        $Val extends SearchWeatherCityScreenState>
    implements $SearchWeatherCityScreenStateCopyWith<$Res> {
  _$SearchWeatherCityScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCity = null,
    Object? weekWeatherEntityList = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      selectedCity: null == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String,
      weekWeatherEntityList: null == weekWeatherEntityList
          ? _value.weekWeatherEntityList
          : weekWeatherEntityList // ignore: cast_nullable_to_non_nullable
              as List<WeekWeatherEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchWeatherCityScreenStateDataImplCopyWith<$Res>
    implements $SearchWeatherCityScreenStateCopyWith<$Res> {
  factory _$$SearchWeatherCityScreenStateDataImplCopyWith(
          _$SearchWeatherCityScreenStateDataImpl value,
          $Res Function(_$SearchWeatherCityScreenStateDataImpl) then) =
      __$$SearchWeatherCityScreenStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedCity,
      List<WeekWeatherEntity> weekWeatherEntityList,
      bool isLoading});
}

/// @nodoc
class __$$SearchWeatherCityScreenStateDataImplCopyWithImpl<$Res>
    extends _$SearchWeatherCityScreenStateCopyWithImpl<$Res,
        _$SearchWeatherCityScreenStateDataImpl>
    implements _$$SearchWeatherCityScreenStateDataImplCopyWith<$Res> {
  __$$SearchWeatherCityScreenStateDataImplCopyWithImpl(
      _$SearchWeatherCityScreenStateDataImpl _value,
      $Res Function(_$SearchWeatherCityScreenStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCity = null,
    Object? weekWeatherEntityList = null,
    Object? isLoading = null,
  }) {
    return _then(_$SearchWeatherCityScreenStateDataImpl(
      selectedCity: null == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as String,
      weekWeatherEntityList: null == weekWeatherEntityList
          ? _value._weekWeatherEntityList
          : weekWeatherEntityList // ignore: cast_nullable_to_non_nullable
              as List<WeekWeatherEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchWeatherCityScreenStateDataImpl
    extends SearchWeatherCityScreenStateData {
  _$SearchWeatherCityScreenStateDataImpl(
      {required this.selectedCity,
      final List<WeekWeatherEntity> weekWeatherEntityList = const [],
      this.isLoading = false})
      : _weekWeatherEntityList = weekWeatherEntityList,
        super._();

  @override
  final String selectedCity;
  final List<WeekWeatherEntity> _weekWeatherEntityList;
  @override
  @JsonKey()
  List<WeekWeatherEntity> get weekWeatherEntityList {
    if (_weekWeatherEntityList is EqualUnmodifiableListView)
      return _weekWeatherEntityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekWeatherEntityList);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SearchWeatherCityScreenState.data(selectedCity: $selectedCity, weekWeatherEntityList: $weekWeatherEntityList, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWeatherCityScreenStateDataImpl &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            const DeepCollectionEquality()
                .equals(other._weekWeatherEntityList, _weekWeatherEntityList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCity,
      const DeepCollectionEquality().hash(_weekWeatherEntityList), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWeatherCityScreenStateDataImplCopyWith<
          _$SearchWeatherCityScreenStateDataImpl>
      get copyWith => __$$SearchWeatherCityScreenStateDataImplCopyWithImpl<
          _$SearchWeatherCityScreenStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)
        data,
  }) {
    return data(selectedCity, weekWeatherEntityList, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)?
        data,
  }) {
    return data?.call(selectedCity, weekWeatherEntityList, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCity,
            List<WeekWeatherEntity> weekWeatherEntityList, bool isLoading)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(selectedCity, weekWeatherEntityList, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchWeatherCityScreenStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchWeatherCityScreenStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchWeatherCityScreenStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SearchWeatherCityScreenStateData
    extends SearchWeatherCityScreenState {
  factory SearchWeatherCityScreenStateData(
      {required final String selectedCity,
      final List<WeekWeatherEntity> weekWeatherEntityList,
      final bool isLoading}) = _$SearchWeatherCityScreenStateDataImpl;
  SearchWeatherCityScreenStateData._() : super._();

  @override
  String get selectedCity;
  @override
  List<WeekWeatherEntity> get weekWeatherEntityList;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchWeatherCityScreenStateDataImplCopyWith<
          _$SearchWeatherCityScreenStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
