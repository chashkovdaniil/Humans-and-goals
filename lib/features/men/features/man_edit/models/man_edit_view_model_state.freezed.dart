// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_edit_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManEditViewModelState {
  ManModel? get initialModel => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<GoalModel> get goals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManEditViewModelStateCopyWith<ManEditViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManEditViewModelStateCopyWith<$Res> {
  factory $ManEditViewModelStateCopyWith(ManEditViewModelState value,
          $Res Function(ManEditViewModelState) then) =
      _$ManEditViewModelStateCopyWithImpl<$Res, ManEditViewModelState>;
  @useResult
  $Res call(
      {ManModel? initialModel,
      String fullname,
      String description,
      List<GoalModel> goals});

  $ManModelCopyWith<$Res>? get initialModel;
}

/// @nodoc
class _$ManEditViewModelStateCopyWithImpl<$Res,
        $Val extends ManEditViewModelState>
    implements $ManEditViewModelStateCopyWith<$Res> {
  _$ManEditViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialModel = freezed,
    Object? fullname = null,
    Object? description = null,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      initialModel: freezed == initialModel
          ? _value.initialModel
          : initialModel // ignore: cast_nullable_to_non_nullable
              as ManModel?,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ManModelCopyWith<$Res>? get initialModel {
    if (_value.initialModel == null) {
      return null;
    }

    return $ManModelCopyWith<$Res>(_value.initialModel!, (value) {
      return _then(_value.copyWith(initialModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManEditViewModelStateImplCopyWith<$Res>
    implements $ManEditViewModelStateCopyWith<$Res> {
  factory _$$ManEditViewModelStateImplCopyWith(
          _$ManEditViewModelStateImpl value,
          $Res Function(_$ManEditViewModelStateImpl) then) =
      __$$ManEditViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ManModel? initialModel,
      String fullname,
      String description,
      List<GoalModel> goals});

  @override
  $ManModelCopyWith<$Res>? get initialModel;
}

/// @nodoc
class __$$ManEditViewModelStateImplCopyWithImpl<$Res>
    extends _$ManEditViewModelStateCopyWithImpl<$Res,
        _$ManEditViewModelStateImpl>
    implements _$$ManEditViewModelStateImplCopyWith<$Res> {
  __$$ManEditViewModelStateImplCopyWithImpl(_$ManEditViewModelStateImpl _value,
      $Res Function(_$ManEditViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialModel = freezed,
    Object? fullname = null,
    Object? description = null,
    Object? goals = null,
  }) {
    return _then(_$ManEditViewModelStateImpl(
      initialModel: freezed == initialModel
          ? _value.initialModel
          : initialModel // ignore: cast_nullable_to_non_nullable
              as ManModel?,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>,
    ));
  }
}

/// @nodoc

class _$ManEditViewModelStateImpl implements _ManEditViewModelState {
  const _$ManEditViewModelStateImpl(
      {required this.initialModel,
      required this.fullname,
      required this.description,
      required final List<GoalModel> goals})
      : _goals = goals;

  @override
  final ManModel? initialModel;
  @override
  final String fullname;
  @override
  final String description;
  final List<GoalModel> _goals;
  @override
  List<GoalModel> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  String toString() {
    return 'ManEditViewModelState(initialModel: $initialModel, fullname: $fullname, description: $description, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManEditViewModelStateImpl &&
            (identical(other.initialModel, initialModel) ||
                other.initialModel == initialModel) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialModel, fullname,
      description, const DeepCollectionEquality().hash(_goals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManEditViewModelStateImplCopyWith<_$ManEditViewModelStateImpl>
      get copyWith => __$$ManEditViewModelStateImplCopyWithImpl<
          _$ManEditViewModelStateImpl>(this, _$identity);
}

abstract class _ManEditViewModelState implements ManEditViewModelState {
  const factory _ManEditViewModelState(
      {required final ManModel? initialModel,
      required final String fullname,
      required final String description,
      required final List<GoalModel> goals}) = _$ManEditViewModelStateImpl;

  @override
  ManModel? get initialModel;
  @override
  String get fullname;
  @override
  String get description;
  @override
  List<GoalModel> get goals;
  @override
  @JsonKey(ignore: true)
  _$$ManEditViewModelStateImplCopyWith<_$ManEditViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
