// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_details_screen_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDetailsScreenParam _$WeatherDetailsScreenParamFromJson(
    Map<String, dynamic> json) {
  return _WeatherDetailsScreenParam.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetailsScreenParam {
  String? get cityName => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailsScreenParamCopyWith<WeatherDetailsScreenParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailsScreenParamCopyWith<$Res> {
  factory $WeatherDetailsScreenParamCopyWith(WeatherDetailsScreenParam value,
          $Res Function(WeatherDetailsScreenParam) then) =
      _$WeatherDetailsScreenParamCopyWithImpl<$Res, WeatherDetailsScreenParam>;
  @useResult
  $Res call({String? cityName, double? latitude, double? longitude});
}

/// @nodoc
class _$WeatherDetailsScreenParamCopyWithImpl<$Res,
        $Val extends WeatherDetailsScreenParam>
    implements $WeatherDetailsScreenParamCopyWith<$Res> {
  _$WeatherDetailsScreenParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDetailsScreenParamImplCopyWith<$Res>
    implements $WeatherDetailsScreenParamCopyWith<$Res> {
  factory _$$WeatherDetailsScreenParamImplCopyWith(
          _$WeatherDetailsScreenParamImpl value,
          $Res Function(_$WeatherDetailsScreenParamImpl) then) =
      __$$WeatherDetailsScreenParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cityName, double? latitude, double? longitude});
}

/// @nodoc
class __$$WeatherDetailsScreenParamImplCopyWithImpl<$Res>
    extends _$WeatherDetailsScreenParamCopyWithImpl<$Res,
        _$WeatherDetailsScreenParamImpl>
    implements _$$WeatherDetailsScreenParamImplCopyWith<$Res> {
  __$$WeatherDetailsScreenParamImplCopyWithImpl(
      _$WeatherDetailsScreenParamImpl _value,
      $Res Function(_$WeatherDetailsScreenParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$WeatherDetailsScreenParamImpl(
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDetailsScreenParamImpl implements _WeatherDetailsScreenParam {
  const _$WeatherDetailsScreenParamImpl(
      {required this.cityName,
      required this.latitude,
      required this.longitude});

  factory _$WeatherDetailsScreenParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDetailsScreenParamImplFromJson(json);

  @override
  final String? cityName;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'WeatherDetailsScreenParam(cityName: $cityName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDetailsScreenParamImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cityName, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDetailsScreenParamImplCopyWith<_$WeatherDetailsScreenParamImpl>
      get copyWith => __$$WeatherDetailsScreenParamImplCopyWithImpl<
          _$WeatherDetailsScreenParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDetailsScreenParamImplToJson(
      this,
    );
  }
}

abstract class _WeatherDetailsScreenParam implements WeatherDetailsScreenParam {
  const factory _WeatherDetailsScreenParam(
      {required final String? cityName,
      required final double? latitude,
      required final double? longitude}) = _$WeatherDetailsScreenParamImpl;

  factory _WeatherDetailsScreenParam.fromJson(Map<String, dynamic> json) =
      _$WeatherDetailsScreenParamImpl.fromJson;

  @override
  String? get cityName;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDetailsScreenParamImplCopyWith<_$WeatherDetailsScreenParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
