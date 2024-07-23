// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Friends _$FriendsFromJson(Map<String, dynamic> json) {
  return _Friends.fromJson(json);
}

/// @nodoc
mixin _$Friends {
  /// Друзья
  Iterable<Man> get men => throw _privateConstructorUsedError;

  /// Serializes this Friends to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Friends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendsCopyWith<Friends> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsCopyWith<$Res> {
  factory $FriendsCopyWith(Friends value, $Res Function(Friends) then) =
      _$FriendsCopyWithImpl<$Res, Friends>;
  @useResult
  $Res call({Iterable<Man> men});
}

/// @nodoc
class _$FriendsCopyWithImpl<$Res, $Val extends Friends>
    implements $FriendsCopyWith<$Res> {
  _$FriendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Friends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? men = null,
  }) {
    return _then(_value.copyWith(
      men: null == men
          ? _value.men
          : men // ignore: cast_nullable_to_non_nullable
              as Iterable<Man>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendsImplCopyWith<$Res> implements $FriendsCopyWith<$Res> {
  factory _$$FriendsImplCopyWith(
          _$FriendsImpl value, $Res Function(_$FriendsImpl) then) =
      __$$FriendsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<Man> men});
}

/// @nodoc
class __$$FriendsImplCopyWithImpl<$Res>
    extends _$FriendsCopyWithImpl<$Res, _$FriendsImpl>
    implements _$$FriendsImplCopyWith<$Res> {
  __$$FriendsImplCopyWithImpl(
      _$FriendsImpl _value, $Res Function(_$FriendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Friends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? men = null,
  }) {
    return _then(_$FriendsImpl(
      men: null == men
          ? _value.men
          : men // ignore: cast_nullable_to_non_nullable
              as Iterable<Man>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendsImpl implements _Friends {
  const _$FriendsImpl({required this.men});

  factory _$FriendsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendsImplFromJson(json);

  /// Друзья
  @override
  final Iterable<Man> men;

  @override
  String toString() {
    return 'Friends(men: $men)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendsImpl &&
            const DeepCollectionEquality().equals(other.men, men));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(men));

  /// Create a copy of Friends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendsImplCopyWith<_$FriendsImpl> get copyWith =>
      __$$FriendsImplCopyWithImpl<_$FriendsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendsImplToJson(
      this,
    );
  }
}

abstract class _Friends implements Friends {
  const factory _Friends({required final Iterable<Man> men}) = _$FriendsImpl;

  factory _Friends.fromJson(Map<String, dynamic> json) = _$FriendsImpl.fromJson;

  /// Друзья
  @override
  Iterable<Man> get men;

  /// Create a copy of Friends
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendsImplCopyWith<_$FriendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
