// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'men_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenViewModelState {
  List<ManModel> get men => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenViewModelStateCopyWith<MenViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenViewModelStateCopyWith<$Res> {
  factory $MenViewModelStateCopyWith(
          MenViewModelState value, $Res Function(MenViewModelState) then) =
      _$MenViewModelStateCopyWithImpl<$Res, MenViewModelState>;
  @useResult
  $Res call({List<ManModel> men});
}

/// @nodoc
class _$MenViewModelStateCopyWithImpl<$Res, $Val extends MenViewModelState>
    implements $MenViewModelStateCopyWith<$Res> {
  _$MenViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? men = null,
  }) {
    return _then(_value.copyWith(
      men: null == men
          ? _value.men
          : men // ignore: cast_nullable_to_non_nullable
              as List<ManModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenViewModelStateImplCopyWith<$Res>
    implements $MenViewModelStateCopyWith<$Res> {
  factory _$$MenViewModelStateImplCopyWith(_$MenViewModelStateImpl value,
          $Res Function(_$MenViewModelStateImpl) then) =
      __$$MenViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ManModel> men});
}

/// @nodoc
class __$$MenViewModelStateImplCopyWithImpl<$Res>
    extends _$MenViewModelStateCopyWithImpl<$Res, _$MenViewModelStateImpl>
    implements _$$MenViewModelStateImplCopyWith<$Res> {
  __$$MenViewModelStateImplCopyWithImpl(_$MenViewModelStateImpl _value,
      $Res Function(_$MenViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? men = null,
  }) {
    return _then(_$MenViewModelStateImpl(
      men: null == men
          ? _value._men
          : men // ignore: cast_nullable_to_non_nullable
              as List<ManModel>,
    ));
  }
}

/// @nodoc

class _$MenViewModelStateImpl implements _MenViewModelState {
  const _$MenViewModelStateImpl({required final List<ManModel> men})
      : _men = men;

  final List<ManModel> _men;
  @override
  List<ManModel> get men {
    if (_men is EqualUnmodifiableListView) return _men;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_men);
  }

  @override
  String toString() {
    return 'MenViewModelState(men: $men)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._men, _men));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_men));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenViewModelStateImplCopyWith<_$MenViewModelStateImpl> get copyWith =>
      __$$MenViewModelStateImplCopyWithImpl<_$MenViewModelStateImpl>(
          this, _$identity);
}

abstract class _MenViewModelState implements MenViewModelState {
  const factory _MenViewModelState({required final List<ManModel> men}) =
      _$MenViewModelStateImpl;

  @override
  List<ManModel> get men;
  @override
  @JsonKey(ignore: true)
  _$$MenViewModelStateImplCopyWith<_$MenViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
