// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'men_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenPageState {
  List<ManModel> get men => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenPageStateCopyWith<MenPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenPageStateCopyWith<$Res> {
  factory $MenPageStateCopyWith(
          MenPageState value, $Res Function(MenPageState) then) =
      _$MenPageStateCopyWithImpl<$Res, MenPageState>;
  @useResult
  $Res call({List<ManModel> men});
}

/// @nodoc
class _$MenPageStateCopyWithImpl<$Res, $Val extends MenPageState>
    implements $MenPageStateCopyWith<$Res> {
  _$MenPageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$MenPageStateImplCopyWith<$Res>
    implements $MenPageStateCopyWith<$Res> {
  factory _$$MenPageStateImplCopyWith(
          _$MenPageStateImpl value, $Res Function(_$MenPageStateImpl) then) =
      __$$MenPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ManModel> men});
}

/// @nodoc
class __$$MenPageStateImplCopyWithImpl<$Res>
    extends _$MenPageStateCopyWithImpl<$Res, _$MenPageStateImpl>
    implements _$$MenPageStateImplCopyWith<$Res> {
  __$$MenPageStateImplCopyWithImpl(
      _$MenPageStateImpl _value, $Res Function(_$MenPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? men = null,
  }) {
    return _then(_$MenPageStateImpl(
      men: null == men
          ? _value._men
          : men // ignore: cast_nullable_to_non_nullable
              as List<ManModel>,
    ));
  }
}

/// @nodoc

class _$MenPageStateImpl implements _MenPageState {
  const _$MenPageStateImpl({required final List<ManModel> men}) : _men = men;

  final List<ManModel> _men;
  @override
  List<ManModel> get men {
    if (_men is EqualUnmodifiableListView) return _men;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_men);
  }

  @override
  String toString() {
    return 'MenPageState(men: $men)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenPageStateImpl &&
            const DeepCollectionEquality().equals(other._men, _men));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_men));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenPageStateImplCopyWith<_$MenPageStateImpl> get copyWith =>
      __$$MenPageStateImplCopyWithImpl<_$MenPageStateImpl>(this, _$identity);
}

abstract class _MenPageState implements MenPageState {
  const factory _MenPageState({required final List<ManModel> men}) =
      _$MenPageStateImpl;

  @override
  List<ManModel> get men;
  @override
  @JsonKey(ignore: true)
  _$$MenPageStateImplCopyWith<_$MenPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
