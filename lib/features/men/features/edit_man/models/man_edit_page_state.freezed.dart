// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_edit_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManEditPageState _$ManEditPageStateFromJson(Map<String, dynamic> json) {
  return _ManEditPageState.fromJson(json);
}

/// @nodoc
mixin _$ManEditPageState {
  ManModel? get initialModel => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<GoalModel> get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManEditPageStateCopyWith<ManEditPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManEditPageStateCopyWith<$Res> {
  factory $ManEditPageStateCopyWith(
          ManEditPageState value, $Res Function(ManEditPageState) then) =
      _$ManEditPageStateCopyWithImpl<$Res, ManEditPageState>;
  @useResult
  $Res call(
      {ManModel? initialModel,
      String fullname,
      String description,
      List<GoalModel> goals});

  $ManModelCopyWith<$Res>? get initialModel;
}

/// @nodoc
class _$ManEditPageStateCopyWithImpl<$Res, $Val extends ManEditPageState>
    implements $ManEditPageStateCopyWith<$Res> {
  _$ManEditPageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ManEditPageStateImplCopyWith<$Res>
    implements $ManEditPageStateCopyWith<$Res> {
  factory _$$ManEditPageStateImplCopyWith(_$ManEditPageStateImpl value,
          $Res Function(_$ManEditPageStateImpl) then) =
      __$$ManEditPageStateImplCopyWithImpl<$Res>;
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
class __$$ManEditPageStateImplCopyWithImpl<$Res>
    extends _$ManEditPageStateCopyWithImpl<$Res, _$ManEditPageStateImpl>
    implements _$$ManEditPageStateImplCopyWith<$Res> {
  __$$ManEditPageStateImplCopyWithImpl(_$ManEditPageStateImpl _value,
      $Res Function(_$ManEditPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialModel = freezed,
    Object? fullname = null,
    Object? description = null,
    Object? goals = null,
  }) {
    return _then(_$ManEditPageStateImpl(
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
@JsonSerializable()
class _$ManEditPageStateImpl implements _ManEditPageState {
  const _$ManEditPageStateImpl(
      {required this.initialModel,
      required this.fullname,
      required this.description,
      required final List<GoalModel> goals})
      : _goals = goals;

  factory _$ManEditPageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManEditPageStateImplFromJson(json);

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
    return 'ManEditPageState(initialModel: $initialModel, fullname: $fullname, description: $description, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManEditPageStateImpl &&
            (identical(other.initialModel, initialModel) ||
                other.initialModel == initialModel) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, initialModel, fullname,
      description, const DeepCollectionEquality().hash(_goals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManEditPageStateImplCopyWith<_$ManEditPageStateImpl> get copyWith =>
      __$$ManEditPageStateImplCopyWithImpl<_$ManEditPageStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManEditPageStateImplToJson(
      this,
    );
  }
}

abstract class _ManEditPageState implements ManEditPageState {
  const factory _ManEditPageState(
      {required final ManModel? initialModel,
      required final String fullname,
      required final String description,
      required final List<GoalModel> goals}) = _$ManEditPageStateImpl;

  factory _ManEditPageState.fromJson(Map<String, dynamic> json) =
      _$ManEditPageStateImpl.fromJson;

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
  _$$ManEditPageStateImplCopyWith<_$ManEditPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
