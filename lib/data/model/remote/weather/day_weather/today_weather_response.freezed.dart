// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodayWeatherResponse _$TodayWeatherResponseFromJson(Map<String, dynamic> json) {
  return _TodayWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$TodayWeatherResponse {
  @JsonKey(name: 'current_units')
  CurrentUnitsWeatherResponse? get currentUnits =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentDayResponse? get currentWeather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayWeatherResponseCopyWith<TodayWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayWeatherResponseCopyWith<$Res> {
  factory $TodayWeatherResponseCopyWith(TodayWeatherResponse value,
          $Res Function(TodayWeatherResponse) then) =
      _$TodayWeatherResponseCopyWithImpl<$Res, TodayWeatherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_units')
      CurrentUnitsWeatherResponse? currentUnits,
      @JsonKey(name: 'current') CurrentDayResponse? currentWeather});

  $CurrentUnitsWeatherResponseCopyWith<$Res>? get currentUnits;
  $CurrentDayResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class _$TodayWeatherResponseCopyWithImpl<$Res,
        $Val extends TodayWeatherResponse>
    implements $TodayWeatherResponseCopyWith<$Res> {
  _$TodayWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUnits = freezed,
    Object? currentWeather = freezed,
  }) {
    return _then(_value.copyWith(
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnitsWeatherResponse?,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentDayResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsWeatherResponseCopyWith<$Res>? get currentUnits {
    if (_value.currentUnits == null) {
      return null;
    }

    return $CurrentUnitsWeatherResponseCopyWith<$Res>(_value.currentUnits!,
        (value) {
      return _then(_value.copyWith(currentUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentDayResponseCopyWith<$Res>? get currentWeather {
    if (_value.currentWeather == null) {
      return null;
    }

    return $CurrentDayResponseCopyWith<$Res>(_value.currentWeather!, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodayWeatherResponseImplCopyWith<$Res>
    implements $TodayWeatherResponseCopyWith<$Res> {
  factory _$$TodayWeatherResponseImplCopyWith(_$TodayWeatherResponseImpl value,
          $Res Function(_$TodayWeatherResponseImpl) then) =
      __$$TodayWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_units')
      CurrentUnitsWeatherResponse? currentUnits,
      @JsonKey(name: 'current') CurrentDayResponse? currentWeather});

  @override
  $CurrentUnitsWeatherResponseCopyWith<$Res>? get currentUnits;
  @override
  $CurrentDayResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class __$$TodayWeatherResponseImplCopyWithImpl<$Res>
    extends _$TodayWeatherResponseCopyWithImpl<$Res, _$TodayWeatherResponseImpl>
    implements _$$TodayWeatherResponseImplCopyWith<$Res> {
  __$$TodayWeatherResponseImplCopyWithImpl(_$TodayWeatherResponseImpl _value,
      $Res Function(_$TodayWeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUnits = freezed,
    Object? currentWeather = freezed,
  }) {
    return _then(_$TodayWeatherResponseImpl(
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnitsWeatherResponse?,
      currentWeather: freezed == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentDayResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayWeatherResponseImpl implements _TodayWeatherResponse {
  const _$TodayWeatherResponseImpl(
      {@JsonKey(name: 'current_units') required this.currentUnits,
      @JsonKey(name: 'current') required this.currentWeather});

  factory _$TodayWeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayWeatherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'current_units')
  final CurrentUnitsWeatherResponse? currentUnits;
  @override
  @JsonKey(name: 'current')
  final CurrentDayResponse? currentWeather;

  @override
  String toString() {
    return 'TodayWeatherResponse(currentUnits: $currentUnits, currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayWeatherResponseImpl &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentUnits, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayWeatherResponseImplCopyWith<_$TodayWeatherResponseImpl>
      get copyWith =>
          __$$TodayWeatherResponseImplCopyWithImpl<_$TodayWeatherResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _TodayWeatherResponse implements TodayWeatherResponse {
  const factory _TodayWeatherResponse(
          {@JsonKey(name: 'current_units')
          required final CurrentUnitsWeatherResponse? currentUnits,
          @JsonKey(name: 'current')
          required final CurrentDayResponse? currentWeather}) =
      _$TodayWeatherResponseImpl;

  factory _TodayWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$TodayWeatherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'current_units')
  CurrentUnitsWeatherResponse? get currentUnits;
  @override
  @JsonKey(name: 'current')
  CurrentDayResponse? get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$TodayWeatherResponseImplCopyWith<_$TodayWeatherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CurrentUnitsWeatherResponse _$CurrentUnitsWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _CurrentUnitsWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnitsWeatherResponse {
  @JsonKey(name: 'temperature_2m')
  String? get temperatureUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation')
  String? get precipitationUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  String? get rainUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'snowfall')
  String? get snowfallUnits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUnitsWeatherResponseCopyWith<CurrentUnitsWeatherResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsWeatherResponseCopyWith<$Res> {
  factory $CurrentUnitsWeatherResponseCopyWith(
          CurrentUnitsWeatherResponse value,
          $Res Function(CurrentUnitsWeatherResponse) then) =
      _$CurrentUnitsWeatherResponseCopyWithImpl<$Res,
          CurrentUnitsWeatherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') String? temperatureUnits,
      @JsonKey(name: 'precipitation') String? precipitationUnits,
      @JsonKey(name: 'rain') String? rainUnits,
      @JsonKey(name: 'snowfall') String? snowfallUnits});
}

/// @nodoc
class _$CurrentUnitsWeatherResponseCopyWithImpl<$Res,
        $Val extends CurrentUnitsWeatherResponse>
    implements $CurrentUnitsWeatherResponseCopyWith<$Res> {
  _$CurrentUnitsWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureUnits = freezed,
    Object? precipitationUnits = freezed,
    Object? rainUnits = freezed,
    Object? snowfallUnits = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureUnits: freezed == temperatureUnits
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationUnits: freezed == precipitationUnits
          ? _value.precipitationUnits
          : precipitationUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      rainUnits: freezed == rainUnits
          ? _value.rainUnits
          : rainUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      snowfallUnits: freezed == snowfallUnits
          ? _value.snowfallUnits
          : snowfallUnits // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsWeatherResponseImplCopyWith<$Res>
    implements $CurrentUnitsWeatherResponseCopyWith<$Res> {
  factory _$$CurrentUnitsWeatherResponseImplCopyWith(
          _$CurrentUnitsWeatherResponseImpl value,
          $Res Function(_$CurrentUnitsWeatherResponseImpl) then) =
      __$$CurrentUnitsWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') String? temperatureUnits,
      @JsonKey(name: 'precipitation') String? precipitationUnits,
      @JsonKey(name: 'rain') String? rainUnits,
      @JsonKey(name: 'snowfall') String? snowfallUnits});
}

/// @nodoc
class __$$CurrentUnitsWeatherResponseImplCopyWithImpl<$Res>
    extends _$CurrentUnitsWeatherResponseCopyWithImpl<$Res,
        _$CurrentUnitsWeatherResponseImpl>
    implements _$$CurrentUnitsWeatherResponseImplCopyWith<$Res> {
  __$$CurrentUnitsWeatherResponseImplCopyWithImpl(
      _$CurrentUnitsWeatherResponseImpl _value,
      $Res Function(_$CurrentUnitsWeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureUnits = freezed,
    Object? precipitationUnits = freezed,
    Object? rainUnits = freezed,
    Object? snowfallUnits = freezed,
  }) {
    return _then(_$CurrentUnitsWeatherResponseImpl(
      temperatureUnits: freezed == temperatureUnits
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationUnits: freezed == precipitationUnits
          ? _value.precipitationUnits
          : precipitationUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      rainUnits: freezed == rainUnits
          ? _value.rainUnits
          : rainUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      snowfallUnits: freezed == snowfallUnits
          ? _value.snowfallUnits
          : snowfallUnits // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsWeatherResponseImpl
    implements _CurrentUnitsWeatherResponse {
  const _$CurrentUnitsWeatherResponseImpl(
      {@JsonKey(name: 'temperature_2m') required this.temperatureUnits,
      @JsonKey(name: 'precipitation') required this.precipitationUnits,
      @JsonKey(name: 'rain') required this.rainUnits,
      @JsonKey(name: 'snowfall') required this.snowfallUnits});

  factory _$CurrentUnitsWeatherResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentUnitsWeatherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_2m')
  final String? temperatureUnits;
  @override
  @JsonKey(name: 'precipitation')
  final String? precipitationUnits;
  @override
  @JsonKey(name: 'rain')
  final String? rainUnits;
  @override
  @JsonKey(name: 'snowfall')
  final String? snowfallUnits;

  @override
  String toString() {
    return 'CurrentUnitsWeatherResponse(temperatureUnits: $temperatureUnits, precipitationUnits: $precipitationUnits, rainUnits: $rainUnits, snowfallUnits: $snowfallUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsWeatherResponseImpl &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits) &&
            (identical(other.precipitationUnits, precipitationUnits) ||
                other.precipitationUnits == precipitationUnits) &&
            (identical(other.rainUnits, rainUnits) ||
                other.rainUnits == rainUnits) &&
            (identical(other.snowfallUnits, snowfallUnits) ||
                other.snowfallUnits == snowfallUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperatureUnits,
      precipitationUnits, rainUnits, snowfallUnits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsWeatherResponseImplCopyWith<_$CurrentUnitsWeatherResponseImpl>
      get copyWith => __$$CurrentUnitsWeatherResponseImplCopyWithImpl<
          _$CurrentUnitsWeatherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnitsWeatherResponse
    implements CurrentUnitsWeatherResponse {
  const factory _CurrentUnitsWeatherResponse(
      {@JsonKey(name: 'temperature_2m') required final String? temperatureUnits,
      @JsonKey(name: 'precipitation') required final String? precipitationUnits,
      @JsonKey(name: 'rain') required final String? rainUnits,
      @JsonKey(name: 'snowfall')
      required final String?
          snowfallUnits}) = _$CurrentUnitsWeatherResponseImpl;

  factory _CurrentUnitsWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsWeatherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_2m')
  String? get temperatureUnits;
  @override
  @JsonKey(name: 'precipitation')
  String? get precipitationUnits;
  @override
  @JsonKey(name: 'rain')
  String? get rainUnits;
  @override
  @JsonKey(name: 'snowfall')
  String? get snowfallUnits;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUnitsWeatherResponseImplCopyWith<_$CurrentUnitsWeatherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CurrentDayResponse _$CurrentDayResponseFromJson(Map<String, dynamic> json) {
  return _CurrentDayResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrentDayResponse {
  @JsonKey(name: 'temperature_2m')
  double? get temperature => throw _privateConstructorUsedError;
  double? get precipitation => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;
  double? get snowfall => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentDayResponseCopyWith<CurrentDayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentDayResponseCopyWith<$Res> {
  factory $CurrentDayResponseCopyWith(
          CurrentDayResponse value, $Res Function(CurrentDayResponse) then) =
      _$CurrentDayResponseCopyWithImpl<$Res, CurrentDayResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') double? temperature,
      double? precipitation,
      double? rain,
      double? snowfall});
}

/// @nodoc
class _$CurrentDayResponseCopyWithImpl<$Res, $Val extends CurrentDayResponse>
    implements $CurrentDayResponseCopyWith<$Res> {
  _$CurrentDayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? precipitation = freezed,
    Object? rain = freezed,
    Object? snowfall = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitation: freezed == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      snowfall: freezed == snowfall
          ? _value.snowfall
          : snowfall // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentDayResponseImplCopyWith<$Res>
    implements $CurrentDayResponseCopyWith<$Res> {
  factory _$$CurrentDayResponseImplCopyWith(_$CurrentDayResponseImpl value,
          $Res Function(_$CurrentDayResponseImpl) then) =
      __$$CurrentDayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') double? temperature,
      double? precipitation,
      double? rain,
      double? snowfall});
}

/// @nodoc
class __$$CurrentDayResponseImplCopyWithImpl<$Res>
    extends _$CurrentDayResponseCopyWithImpl<$Res, _$CurrentDayResponseImpl>
    implements _$$CurrentDayResponseImplCopyWith<$Res> {
  __$$CurrentDayResponseImplCopyWithImpl(_$CurrentDayResponseImpl _value,
      $Res Function(_$CurrentDayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? precipitation = freezed,
    Object? rain = freezed,
    Object? snowfall = freezed,
  }) {
    return _then(_$CurrentDayResponseImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      precipitation: freezed == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      snowfall: freezed == snowfall
          ? _value.snowfall
          : snowfall // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentDayResponseImpl implements _CurrentDayResponse {
  const _$CurrentDayResponseImpl(
      {@JsonKey(name: 'temperature_2m') required this.temperature,
      required this.precipitation,
      required this.rain,
      required this.snowfall});

  factory _$CurrentDayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentDayResponseImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_2m')
  final double? temperature;
  @override
  final double? precipitation;
  @override
  final double? rain;
  @override
  final double? snowfall;

  @override
  String toString() {
    return 'CurrentDayResponse(temperature: $temperature, precipitation: $precipitation, rain: $rain, snowfall: $snowfall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentDayResponseImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snowfall, snowfall) ||
                other.snowfall == snowfall));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperature, precipitation, rain, snowfall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentDayResponseImplCopyWith<_$CurrentDayResponseImpl> get copyWith =>
      __$$CurrentDayResponseImplCopyWithImpl<_$CurrentDayResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentDayResponseImplToJson(
      this,
    );
  }
}

abstract class _CurrentDayResponse implements CurrentDayResponse {
  const factory _CurrentDayResponse(
      {@JsonKey(name: 'temperature_2m') required final double? temperature,
      required final double? precipitation,
      required final double? rain,
      required final double? snowfall}) = _$CurrentDayResponseImpl;

  factory _CurrentDayResponse.fromJson(Map<String, dynamic> json) =
      _$CurrentDayResponseImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_2m')
  double? get temperature;
  @override
  double? get precipitation;
  @override
  double? get rain;
  @override
  double? get snowfall;
  @override
  @JsonKey(ignore: true)
  _$$CurrentDayResponseImplCopyWith<_$CurrentDayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
