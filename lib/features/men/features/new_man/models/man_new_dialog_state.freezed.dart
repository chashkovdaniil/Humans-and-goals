// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_new_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManNewDialogState {
  String get fullname => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManNewDialogStateCopyWith<ManNewDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManNewDialogStateCopyWith<$Res> {
  factory $ManNewDialogStateCopyWith(
          ManNewDialogState value, $Res Function(ManNewDialogState) then) =
      _$ManNewDialogStateCopyWithImpl<$Res, ManNewDialogState>;
  @useResult
  $Res call({String fullname, String uuid});
}

/// @nodoc
class _$ManNewDialogStateCopyWithImpl<$Res, $Val extends ManNewDialogState>
    implements $ManNewDialogStateCopyWith<$Res> {
  _$ManNewDialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManNewDialogStateImplCopyWith<$Res>
    implements $ManNewDialogStateCopyWith<$Res> {
  factory _$$ManNewDialogStateImplCopyWith(_$ManNewDialogStateImpl value,
          $Res Function(_$ManNewDialogStateImpl) then) =
      __$$ManNewDialogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullname, String uuid});
}

/// @nodoc
class __$$ManNewDialogStateImplCopyWithImpl<$Res>
    extends _$ManNewDialogStateCopyWithImpl<$Res, _$ManNewDialogStateImpl>
    implements _$$ManNewDialogStateImplCopyWith<$Res> {
  __$$ManNewDialogStateImplCopyWithImpl(_$ManNewDialogStateImpl _value,
      $Res Function(_$ManNewDialogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? uuid = null,
  }) {
    return _then(_$ManNewDialogStateImpl(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ManNewDialogStateImpl implements _ManNewDialogState {
  const _$ManNewDialogStateImpl({required this.fullname, required this.uuid});

  @override
  final String fullname;
  @override
  final String uuid;

  @override
  String toString() {
    return 'ManNewDialogState(fullname: $fullname, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManNewDialogStateImpl &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullname, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManNewDialogStateImplCopyWith<_$ManNewDialogStateImpl> get copyWith =>
      __$$ManNewDialogStateImplCopyWithImpl<_$ManNewDialogStateImpl>(
          this, _$identity);
}

abstract class _ManNewDialogState implements ManNewDialogState {
  const factory _ManNewDialogState(
      {required final String fullname,
      required final String uuid}) = _$ManNewDialogStateImpl;

  @override
  String get fullname;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$ManNewDialogStateImplCopyWith<_$ManNewDialogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
