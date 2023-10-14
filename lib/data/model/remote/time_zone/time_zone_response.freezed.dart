// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeZoneResponse _$TimeZoneResponseFromJson(Map<String, dynamic> json) {
  return _TimeZoneResponse.fromJson(json);
}

/// @nodoc
mixin _$TimeZoneResponse {
  int? get dstOffset => throw _privateConstructorUsedError;
  int? get rawOffset => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get timeZoneId => throw _privateConstructorUsedError;
  String? get timeZoneName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeZoneResponseCopyWith<TimeZoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneResponseCopyWith<$Res> {
  factory $TimeZoneResponseCopyWith(
          TimeZoneResponse value, $Res Function(TimeZoneResponse) then) =
      _$TimeZoneResponseCopyWithImpl<$Res, TimeZoneResponse>;
  @useResult
  $Res call(
      {int? dstOffset,
      int? rawOffset,
      String? status,
      String? timeZoneId,
      String? timeZoneName});
}

/// @nodoc
class _$TimeZoneResponseCopyWithImpl<$Res, $Val extends TimeZoneResponse>
    implements $TimeZoneResponseCopyWith<$Res> {
  _$TimeZoneResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dstOffset = freezed,
    Object? rawOffset = freezed,
    Object? status = freezed,
    Object? timeZoneId = freezed,
    Object? timeZoneName = freezed,
  }) {
    return _then(_value.copyWith(
      dstOffset: freezed == dstOffset
          ? _value.dstOffset
          : dstOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      rawOffset: freezed == rawOffset
          ? _value.rawOffset
          : rawOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneId: freezed == timeZoneId
          ? _value.timeZoneId
          : timeZoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneName: freezed == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeZoneResponseImplCopyWith<$Res>
    implements $TimeZoneResponseCopyWith<$Res> {
  factory _$$TimeZoneResponseImplCopyWith(_$TimeZoneResponseImpl value,
          $Res Function(_$TimeZoneResponseImpl) then) =
      __$$TimeZoneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dstOffset,
      int? rawOffset,
      String? status,
      String? timeZoneId,
      String? timeZoneName});
}

/// @nodoc
class __$$TimeZoneResponseImplCopyWithImpl<$Res>
    extends _$TimeZoneResponseCopyWithImpl<$Res, _$TimeZoneResponseImpl>
    implements _$$TimeZoneResponseImplCopyWith<$Res> {
  __$$TimeZoneResponseImplCopyWithImpl(_$TimeZoneResponseImpl _value,
      $Res Function(_$TimeZoneResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dstOffset = freezed,
    Object? rawOffset = freezed,
    Object? status = freezed,
    Object? timeZoneId = freezed,
    Object? timeZoneName = freezed,
  }) {
    return _then(_$TimeZoneResponseImpl(
      dstOffset: freezed == dstOffset
          ? _value.dstOffset
          : dstOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      rawOffset: freezed == rawOffset
          ? _value.rawOffset
          : rawOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneId: freezed == timeZoneId
          ? _value.timeZoneId
          : timeZoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneName: freezed == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeZoneResponseImpl implements _TimeZoneResponse {
  const _$TimeZoneResponseImpl(
      {required this.dstOffset,
      required this.rawOffset,
      required this.status,
      required this.timeZoneId,
      required this.timeZoneName});

  factory _$TimeZoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeZoneResponseImplFromJson(json);

  @override
  final int? dstOffset;
  @override
  final int? rawOffset;
  @override
  final String? status;
  @override
  final String? timeZoneId;
  @override
  final String? timeZoneName;

  @override
  String toString() {
    return 'TimeZoneResponse(dstOffset: $dstOffset, rawOffset: $rawOffset, status: $status, timeZoneId: $timeZoneId, timeZoneName: $timeZoneName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeZoneResponseImpl &&
            (identical(other.dstOffset, dstOffset) ||
                other.dstOffset == dstOffset) &&
            (identical(other.rawOffset, rawOffset) ||
                other.rawOffset == rawOffset) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeZoneId, timeZoneId) ||
                other.timeZoneId == timeZoneId) &&
            (identical(other.timeZoneName, timeZoneName) ||
                other.timeZoneName == timeZoneName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dstOffset, rawOffset, status, timeZoneId, timeZoneName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeZoneResponseImplCopyWith<_$TimeZoneResponseImpl> get copyWith =>
      __$$TimeZoneResponseImplCopyWithImpl<_$TimeZoneResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeZoneResponseImplToJson(
      this,
    );
  }
}

abstract class _TimeZoneResponse implements TimeZoneResponse {
  const factory _TimeZoneResponse(
      {required final int? dstOffset,
      required final int? rawOffset,
      required final String? status,
      required final String? timeZoneId,
      required final String? timeZoneName}) = _$TimeZoneResponseImpl;

  factory _TimeZoneResponse.fromJson(Map<String, dynamic> json) =
      _$TimeZoneResponseImpl.fromJson;

  @override
  int? get dstOffset;
  @override
  int? get rawOffset;
  @override
  String? get status;
  @override
  String? get timeZoneId;
  @override
  String? get timeZoneName;
  @override
  @JsonKey(ignore: true)
  _$$TimeZoneResponseImplCopyWith<_$TimeZoneResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
