// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekWeatherResponse _$WeekWeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeekWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeekWeatherResponse {
  @JsonKey(name: 'daily_units')
  DailyUnitsWeatherResponse? get dailyUnits =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'daily')
  DailyResponse? get dailyWeather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekWeatherResponseCopyWith<WeekWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekWeatherResponseCopyWith<$Res> {
  factory $WeekWeatherResponseCopyWith(
          WeekWeatherResponse value, $Res Function(WeekWeatherResponse) then) =
      _$WeekWeatherResponseCopyWithImpl<$Res, WeekWeatherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'daily_units') DailyUnitsWeatherResponse? dailyUnits,
      @JsonKey(name: 'daily') DailyResponse? dailyWeather});

  $DailyUnitsWeatherResponseCopyWith<$Res>? get dailyUnits;
  $DailyResponseCopyWith<$Res>? get dailyWeather;
}

/// @nodoc
class _$WeekWeatherResponseCopyWithImpl<$Res, $Val extends WeekWeatherResponse>
    implements $WeekWeatherResponseCopyWith<$Res> {
  _$WeekWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyUnits = freezed,
    Object? dailyWeather = freezed,
  }) {
    return _then(_value.copyWith(
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnitsWeatherResponse?,
      dailyWeather: freezed == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as DailyResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsWeatherResponseCopyWith<$Res>? get dailyUnits {
    if (_value.dailyUnits == null) {
      return null;
    }

    return $DailyUnitsWeatherResponseCopyWith<$Res>(_value.dailyUnits!,
        (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyResponseCopyWith<$Res>? get dailyWeather {
    if (_value.dailyWeather == null) {
      return null;
    }

    return $DailyResponseCopyWith<$Res>(_value.dailyWeather!, (value) {
      return _then(_value.copyWith(dailyWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekWeatherResponseImplCopyWith<$Res>
    implements $WeekWeatherResponseCopyWith<$Res> {
  factory _$$WeekWeatherResponseImplCopyWith(_$WeekWeatherResponseImpl value,
          $Res Function(_$WeekWeatherResponseImpl) then) =
      __$$WeekWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'daily_units') DailyUnitsWeatherResponse? dailyUnits,
      @JsonKey(name: 'daily') DailyResponse? dailyWeather});

  @override
  $DailyUnitsWeatherResponseCopyWith<$Res>? get dailyUnits;
  @override
  $DailyResponseCopyWith<$Res>? get dailyWeather;
}

/// @nodoc
class __$$WeekWeatherResponseImplCopyWithImpl<$Res>
    extends _$WeekWeatherResponseCopyWithImpl<$Res, _$WeekWeatherResponseImpl>
    implements _$$WeekWeatherResponseImplCopyWith<$Res> {
  __$$WeekWeatherResponseImplCopyWithImpl(_$WeekWeatherResponseImpl _value,
      $Res Function(_$WeekWeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyUnits = freezed,
    Object? dailyWeather = freezed,
  }) {
    return _then(_$WeekWeatherResponseImpl(
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnitsWeatherResponse?,
      dailyWeather: freezed == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as DailyResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekWeatherResponseImpl implements _WeekWeatherResponse {
  const _$WeekWeatherResponseImpl(
      {@JsonKey(name: 'daily_units') required this.dailyUnits,
      @JsonKey(name: 'daily') required this.dailyWeather});

  factory _$WeekWeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekWeatherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'daily_units')
  final DailyUnitsWeatherResponse? dailyUnits;
  @override
  @JsonKey(name: 'daily')
  final DailyResponse? dailyWeather;

  @override
  String toString() {
    return 'WeekWeatherResponse(dailyUnits: $dailyUnits, dailyWeather: $dailyWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekWeatherResponseImpl &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.dailyWeather, dailyWeather) ||
                other.dailyWeather == dailyWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dailyUnits, dailyWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekWeatherResponseImplCopyWith<_$WeekWeatherResponseImpl> get copyWith =>
      __$$WeekWeatherResponseImplCopyWithImpl<_$WeekWeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeekWeatherResponse implements WeekWeatherResponse {
  const factory _WeekWeatherResponse(
          {@JsonKey(name: 'daily_units')
          required final DailyUnitsWeatherResponse? dailyUnits,
          @JsonKey(name: 'daily') required final DailyResponse? dailyWeather}) =
      _$WeekWeatherResponseImpl;

  factory _WeekWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeekWeatherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'daily_units')
  DailyUnitsWeatherResponse? get dailyUnits;
  @override
  @JsonKey(name: 'daily')
  DailyResponse? get dailyWeather;
  @override
  @JsonKey(ignore: true)
  _$$WeekWeatherResponseImplCopyWith<_$WeekWeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyUnitsWeatherResponse _$DailyUnitsWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _DailyUnitsWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyUnitsWeatherResponse {
  @JsonKey(name: 'temperature_2m_max')
  String? get temperatureMaxUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  String? get precipitationProbabilityMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyUnitsWeatherResponseCopyWith<DailyUnitsWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsWeatherResponseCopyWith<$Res> {
  factory $DailyUnitsWeatherResponseCopyWith(DailyUnitsWeatherResponse value,
          $Res Function(DailyUnitsWeatherResponse) then) =
      _$DailyUnitsWeatherResponseCopyWithImpl<$Res, DailyUnitsWeatherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m_max') String? temperatureMaxUnits,
      @JsonKey(name: 'precipitation_probability_max')
      String? precipitationProbabilityMax});
}

/// @nodoc
class _$DailyUnitsWeatherResponseCopyWithImpl<$Res,
        $Val extends DailyUnitsWeatherResponse>
    implements $DailyUnitsWeatherResponseCopyWith<$Res> {
  _$DailyUnitsWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureMaxUnits = freezed,
    Object? precipitationProbabilityMax = freezed,
  }) {
    return _then(_value.copyWith(
      temperatureMaxUnits: freezed == temperatureMaxUnits
          ? _value.temperatureMaxUnits
          : temperatureMaxUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyUnitsWeatherResponseImplCopyWith<$Res>
    implements $DailyUnitsWeatherResponseCopyWith<$Res> {
  factory _$$DailyUnitsWeatherResponseImplCopyWith(
          _$DailyUnitsWeatherResponseImpl value,
          $Res Function(_$DailyUnitsWeatherResponseImpl) then) =
      __$$DailyUnitsWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m_max') String? temperatureMaxUnits,
      @JsonKey(name: 'precipitation_probability_max')
      String? precipitationProbabilityMax});
}

/// @nodoc
class __$$DailyUnitsWeatherResponseImplCopyWithImpl<$Res>
    extends _$DailyUnitsWeatherResponseCopyWithImpl<$Res,
        _$DailyUnitsWeatherResponseImpl>
    implements _$$DailyUnitsWeatherResponseImplCopyWith<$Res> {
  __$$DailyUnitsWeatherResponseImplCopyWithImpl(
      _$DailyUnitsWeatherResponseImpl _value,
      $Res Function(_$DailyUnitsWeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureMaxUnits = freezed,
    Object? precipitationProbabilityMax = freezed,
  }) {
    return _then(_$DailyUnitsWeatherResponseImpl(
      temperatureMaxUnits: freezed == temperatureMaxUnits
          ? _value.temperatureMaxUnits
          : temperatureMaxUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyUnitsWeatherResponseImpl implements _DailyUnitsWeatherResponse {
  const _$DailyUnitsWeatherResponseImpl(
      {@JsonKey(name: 'temperature_2m_max') required this.temperatureMaxUnits,
      @JsonKey(name: 'precipitation_probability_max')
      required this.precipitationProbabilityMax});

  factory _$DailyUnitsWeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyUnitsWeatherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_2m_max')
  final String? temperatureMaxUnits;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  final String? precipitationProbabilityMax;

  @override
  String toString() {
    return 'DailyUnitsWeatherResponse(temperatureMaxUnits: $temperatureMaxUnits, precipitationProbabilityMax: $precipitationProbabilityMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsWeatherResponseImpl &&
            (identical(other.temperatureMaxUnits, temperatureMaxUnits) ||
                other.temperatureMaxUnits == temperatureMaxUnits) &&
            (identical(other.precipitationProbabilityMax,
                    precipitationProbabilityMax) ||
                other.precipitationProbabilityMax ==
                    precipitationProbabilityMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temperatureMaxUnits, precipitationProbabilityMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsWeatherResponseImplCopyWith<_$DailyUnitsWeatherResponseImpl>
      get copyWith => __$$DailyUnitsWeatherResponseImplCopyWithImpl<
          _$DailyUnitsWeatherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyUnitsWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _DailyUnitsWeatherResponse implements DailyUnitsWeatherResponse {
  const factory _DailyUnitsWeatherResponse(
          {@JsonKey(name: 'temperature_2m_max')
          required final String? temperatureMaxUnits,
          @JsonKey(name: 'precipitation_probability_max')
          required final String? precipitationProbabilityMax}) =
      _$DailyUnitsWeatherResponseImpl;

  factory _DailyUnitsWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$DailyUnitsWeatherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_2m_max')
  String? get temperatureMaxUnits;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  String? get precipitationProbabilityMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyUnitsWeatherResponseImplCopyWith<_$DailyUnitsWeatherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DailyResponse _$DailyResponseFromJson(Map<String, dynamic> json) {
  return _DailyResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyResponse {
  List<String>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperatureMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperatureMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  List<double>? get precipitationProbabilityMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index_clear_sky_max')
  List<double>? get uvIndexClearSkyMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyResponseCopyWith<DailyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyResponseCopyWith<$Res> {
  factory $DailyResponseCopyWith(
          DailyResponse value, $Res Function(DailyResponse) then) =
      _$DailyResponseCopyWithImpl<$Res, DailyResponse>;
  @useResult
  $Res call(
      {List<String>? time,
      @JsonKey(name: 'temperature_2m_max') List<double>? temperatureMax,
      @JsonKey(name: 'temperature_2m_min') List<double>? temperatureMin,
      @JsonKey(name: 'precipitation_probability_max')
      List<double>? precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max')
      List<double>? uvIndexClearSkyMax});
}

/// @nodoc
class _$DailyResponseCopyWithImpl<$Res, $Val extends DailyResponse>
    implements $DailyResponseCopyWith<$Res> {
  _$DailyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperatureMax = freezed,
    Object? temperatureMin = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? uvIndexClearSkyMax = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperatureMax: freezed == temperatureMax
          ? _value.temperatureMax
          : temperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperatureMin: freezed == temperatureMin
          ? _value.temperatureMin
          : temperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      uvIndexClearSkyMax: freezed == uvIndexClearSkyMax
          ? _value.uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyResponseImplCopyWith<$Res>
    implements $DailyResponseCopyWith<$Res> {
  factory _$$DailyResponseImplCopyWith(
          _$DailyResponseImpl value, $Res Function(_$DailyResponseImpl) then) =
      __$$DailyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? time,
      @JsonKey(name: 'temperature_2m_max') List<double>? temperatureMax,
      @JsonKey(name: 'temperature_2m_min') List<double>? temperatureMin,
      @JsonKey(name: 'precipitation_probability_max')
      List<double>? precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max')
      List<double>? uvIndexClearSkyMax});
}

/// @nodoc
class __$$DailyResponseImplCopyWithImpl<$Res>
    extends _$DailyResponseCopyWithImpl<$Res, _$DailyResponseImpl>
    implements _$$DailyResponseImplCopyWith<$Res> {
  __$$DailyResponseImplCopyWithImpl(
      _$DailyResponseImpl _value, $Res Function(_$DailyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperatureMax = freezed,
    Object? temperatureMin = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? uvIndexClearSkyMax = freezed,
  }) {
    return _then(_$DailyResponseImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperatureMax: freezed == temperatureMax
          ? _value._temperatureMax
          : temperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperatureMin: freezed == temperatureMin
          ? _value._temperatureMin
          : temperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value._precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      uvIndexClearSkyMax: freezed == uvIndexClearSkyMax
          ? _value._uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyResponseImpl implements _DailyResponse {
  const _$DailyResponseImpl(
      {required final List<String>? time,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double>? temperatureMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double>? temperatureMin,
      @JsonKey(name: 'precipitation_probability_max')
      required final List<double>? precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max')
      required final List<double>? uvIndexClearSkyMax})
      : _time = time,
        _temperatureMax = temperatureMax,
        _temperatureMin = temperatureMin,
        _precipitationProbabilityMax = precipitationProbabilityMax,
        _uvIndexClearSkyMax = uvIndexClearSkyMax;

  factory _$DailyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyResponseImplFromJson(json);

  final List<String>? _time;
  @override
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperatureMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperatureMax {
    final value = _temperatureMax;
    if (value == null) return null;
    if (_temperatureMax is EqualUnmodifiableListView) return _temperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperatureMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperatureMin {
    final value = _temperatureMin;
    if (value == null) return null;
    if (_temperatureMin is EqualUnmodifiableListView) return _temperatureMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _precipitationProbabilityMax;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<double>? get precipitationProbabilityMax {
    final value = _precipitationProbabilityMax;
    if (value == null) return null;
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _uvIndexClearSkyMax;
  @override
  @JsonKey(name: 'uv_index_clear_sky_max')
  List<double>? get uvIndexClearSkyMax {
    final value = _uvIndexClearSkyMax;
    if (value == null) return null;
    if (_uvIndexClearSkyMax is EqualUnmodifiableListView)
      return _uvIndexClearSkyMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyResponse(time: $time, temperatureMax: $temperatureMax, temperatureMin: $temperatureMin, precipitationProbabilityMax: $precipitationProbabilityMax, uvIndexClearSkyMax: $uvIndexClearSkyMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyResponseImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMax, _temperatureMax) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMin, _temperatureMin) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbabilityMax,
                _precipitationProbabilityMax) &&
            const DeepCollectionEquality()
                .equals(other._uvIndexClearSkyMax, _uvIndexClearSkyMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperatureMax),
      const DeepCollectionEquality().hash(_temperatureMin),
      const DeepCollectionEquality().hash(_precipitationProbabilityMax),
      const DeepCollectionEquality().hash(_uvIndexClearSkyMax));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyResponseImplCopyWith<_$DailyResponseImpl> get copyWith =>
      __$$DailyResponseImplCopyWithImpl<_$DailyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyResponseImplToJson(
      this,
    );
  }
}

abstract class _DailyResponse implements DailyResponse {
  const factory _DailyResponse(
      {required final List<String>? time,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double>? temperatureMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double>? temperatureMin,
      @JsonKey(name: 'precipitation_probability_max')
      required final List<double>? precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max')
      required final List<double>? uvIndexClearSkyMax}) = _$DailyResponseImpl;

  factory _DailyResponse.fromJson(Map<String, dynamic> json) =
      _$DailyResponseImpl.fromJson;

  @override
  List<String>? get time;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperatureMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperatureMin;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<double>? get precipitationProbabilityMax;
  @override
  @JsonKey(name: 'uv_index_clear_sky_max')
  List<double>? get uvIndexClearSkyMax;
  @override
  @JsonKey(ignore: true)
  _$$DailyResponseImplCopyWith<_$DailyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
