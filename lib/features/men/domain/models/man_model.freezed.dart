// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManModel _$ManModelFromJson(Map<String, dynamic> json) {
  return _ManModel.fromJson(json);
}

/// @nodoc
mixin _$ManModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManModelCopyWith<ManModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManModelCopyWith<$Res> {
  factory $ManModelCopyWith(ManModel value, $Res Function(ManModel) then) =
      _$ManModelCopyWithImpl<$Res, ManModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ManModelCopyWithImpl<$Res, $Val extends ManModel>
    implements $ManModelCopyWith<$Res> {
  _$ManModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManModelImplCopyWith<$Res>
    implements $ManModelCopyWith<$Res> {
  factory _$$ManModelImplCopyWith(
          _$ManModelImpl value, $Res Function(_$ManModelImpl) then) =
      __$$ManModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ManModelImplCopyWithImpl<$Res>
    extends _$ManModelCopyWithImpl<$Res, _$ManModelImpl>
    implements _$$ManModelImplCopyWith<$Res> {
  __$$ManModelImplCopyWithImpl(
      _$ManModelImpl _value, $Res Function(_$ManModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ManModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManModelImpl implements _ManModel {
  const _$ManModelImpl({required this.id});

  factory _$ManModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManModelImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ManModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManModelImplCopyWith<_$ManModelImpl> get copyWith =>
      __$$ManModelImplCopyWithImpl<_$ManModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManModelImplToJson(
      this,
    );
  }
}

abstract class _ManModel implements ManModel {
  const factory _ManModel({required final String id}) = _$ManModelImpl;

  factory _ManModel.fromJson(Map<String, dynamic> json) =
      _$ManModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ManModelImplCopyWith<_$ManModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
