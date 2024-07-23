// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_state_notifier_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManStateNotifierParams _$ManStateNotifierParamsFromJson(
    Map<String, dynamic> json) {
  return _ManStateNotifierParams.fromJson(json);
}

/// @nodoc
mixin _$ManStateNotifierParams {
  int get friendsPerPage => throw _privateConstructorUsedError;

  /// Serializes this ManStateNotifierParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManStateNotifierParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManStateNotifierParamsCopyWith<ManStateNotifierParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManStateNotifierParamsCopyWith<$Res> {
  factory $ManStateNotifierParamsCopyWith(ManStateNotifierParams value,
          $Res Function(ManStateNotifierParams) then) =
      _$ManStateNotifierParamsCopyWithImpl<$Res, ManStateNotifierParams>;
  @useResult
  $Res call({int friendsPerPage});
}

/// @nodoc
class _$ManStateNotifierParamsCopyWithImpl<$Res,
        $Val extends ManStateNotifierParams>
    implements $ManStateNotifierParamsCopyWith<$Res> {
  _$ManStateNotifierParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManStateNotifierParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendsPerPage = null,
  }) {
    return _then(_value.copyWith(
      friendsPerPage: null == friendsPerPage
          ? _value.friendsPerPage
          : friendsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManStateNotifierParamsImplCopyWith<$Res>
    implements $ManStateNotifierParamsCopyWith<$Res> {
  factory _$$ManStateNotifierParamsImplCopyWith(
          _$ManStateNotifierParamsImpl value,
          $Res Function(_$ManStateNotifierParamsImpl) then) =
      __$$ManStateNotifierParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int friendsPerPage});
}

/// @nodoc
class __$$ManStateNotifierParamsImplCopyWithImpl<$Res>
    extends _$ManStateNotifierParamsCopyWithImpl<$Res,
        _$ManStateNotifierParamsImpl>
    implements _$$ManStateNotifierParamsImplCopyWith<$Res> {
  __$$ManStateNotifierParamsImplCopyWithImpl(
      _$ManStateNotifierParamsImpl _value,
      $Res Function(_$ManStateNotifierParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManStateNotifierParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendsPerPage = null,
  }) {
    return _then(_$ManStateNotifierParamsImpl(
      friendsPerPage: null == friendsPerPage
          ? _value.friendsPerPage
          : friendsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManStateNotifierParamsImpl implements _ManStateNotifierParams {
  const _$ManStateNotifierParamsImpl({required this.friendsPerPage});

  factory _$ManStateNotifierParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManStateNotifierParamsImplFromJson(json);

  @override
  final int friendsPerPage;

  @override
  String toString() {
    return 'ManStateNotifierParams(friendsPerPage: $friendsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManStateNotifierParamsImpl &&
            (identical(other.friendsPerPage, friendsPerPage) ||
                other.friendsPerPage == friendsPerPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, friendsPerPage);

  /// Create a copy of ManStateNotifierParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManStateNotifierParamsImplCopyWith<_$ManStateNotifierParamsImpl>
      get copyWith => __$$ManStateNotifierParamsImplCopyWithImpl<
          _$ManStateNotifierParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManStateNotifierParamsImplToJson(
      this,
    );
  }
}

abstract class _ManStateNotifierParams implements ManStateNotifierParams {
  const factory _ManStateNotifierParams({required final int friendsPerPage}) =
      _$ManStateNotifierParamsImpl;

  factory _ManStateNotifierParams.fromJson(Map<String, dynamic> json) =
      _$ManStateNotifierParamsImpl.fromJson;

  @override
  int get friendsPerPage;

  /// Create a copy of ManStateNotifierParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManStateNotifierParamsImplCopyWith<_$ManStateNotifierParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
