// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Man _$ManFromJson(Map<String, dynamic> json) {
  return _Man.fromJson(json);
}

/// @nodoc
mixin _$Man {
  /// Идентификатор человека
  String get id => throw _privateConstructorUsedError;

  /// Полное имя человека
  String get fullname => throw _privateConstructorUsedError;

  /// Описание человека
  String get description => throw _privateConstructorUsedError;

  /// Цели, с которыми может помочь пользователь
  List<Goal> get goals => throw _privateConstructorUsedError;

  /// Ссылка на человека из внешней среды
  String get link => throw _privateConstructorUsedError;

  /// Номер телефона
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this Man to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Man
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManCopyWith<Man> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManCopyWith<$Res> {
  factory $ManCopyWith(Man value, $Res Function(Man) then) =
      _$ManCopyWithImpl<$Res, Man>;
  @useResult
  $Res call(
      {String id,
      String fullname,
      String description,
      List<Goal> goals,
      String link,
      String phone});
}

/// @nodoc
class _$ManCopyWithImpl<$Res, $Val extends Man> implements $ManCopyWith<$Res> {
  _$ManCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Man
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? description = null,
    Object? goals = null,
    Object? link = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<Goal>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManImplCopyWith<$Res> implements $ManCopyWith<$Res> {
  factory _$$ManImplCopyWith(_$ManImpl value, $Res Function(_$ManImpl) then) =
      __$$ManImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullname,
      String description,
      List<Goal> goals,
      String link,
      String phone});
}

/// @nodoc
class __$$ManImplCopyWithImpl<$Res> extends _$ManCopyWithImpl<$Res, _$ManImpl>
    implements _$$ManImplCopyWith<$Res> {
  __$$ManImplCopyWithImpl(_$ManImpl _value, $Res Function(_$ManImpl) _then)
      : super(_value, _then);

  /// Create a copy of Man
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullname = null,
    Object? description = null,
    Object? goals = null,
    Object? link = null,
    Object? phone = null,
  }) {
    return _then(_$ManImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<Goal>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManImpl implements _Man {
  const _$ManImpl(
      {required this.id,
      required this.fullname,
      required this.description,
      required final List<Goal> goals,
      required this.link,
      required this.phone})
      : _goals = goals;

  factory _$ManImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManImplFromJson(json);

  /// Идентификатор человека
  @override
  final String id;

  /// Полное имя человека
  @override
  final String fullname;

  /// Описание человека
  @override
  final String description;

  /// Цели, с которыми может помочь пользователь
  final List<Goal> _goals;

  /// Цели, с которыми может помочь пользователь
  @override
  List<Goal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  /// Ссылка на человека из внешней среды
  @override
  final String link;

  /// Номер телефона
  @override
  final String phone;

  @override
  String toString() {
    return 'Man(id: $id, fullname: $fullname, description: $description, goals: $goals, link: $link, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname, description,
      const DeepCollectionEquality().hash(_goals), link, phone);

  /// Create a copy of Man
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManImplCopyWith<_$ManImpl> get copyWith =>
      __$$ManImplCopyWithImpl<_$ManImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManImplToJson(
      this,
    );
  }
}

abstract class _Man implements Man {
  const factory _Man(
      {required final String id,
      required final String fullname,
      required final String description,
      required final List<Goal> goals,
      required final String link,
      required final String phone}) = _$ManImpl;

  factory _Man.fromJson(Map<String, dynamic> json) = _$ManImpl.fromJson;

  /// Идентификатор человека
  @override
  String get id;

  /// Полное имя человека
  @override
  String get fullname;

  /// Описание человека
  @override
  String get description;

  /// Цели, с которыми может помочь пользователь
  @override
  List<Goal> get goals;

  /// Ссылка на человека из внешней среды
  @override
  String get link;

  /// Номер телефона
  @override
  String get phone;

  /// Create a copy of Man
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManImplCopyWith<_$ManImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
