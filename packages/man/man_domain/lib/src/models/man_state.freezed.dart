// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Man man, Friends friends, int friendsPage) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Man man, Friends friends, int friendsPage)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Man man, Friends friends, int friendsPage)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManStateEmpty value) empty,
    required TResult Function(_ManState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManStateEmpty value)? empty,
    TResult? Function(_ManState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManStateEmpty value)? empty,
    TResult Function(_ManState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManStateCopyWith<$Res> {
  factory $ManStateCopyWith(ManState value, $Res Function(ManState) then) =
      _$ManStateCopyWithImpl<$Res, ManState>;
}

/// @nodoc
class _$ManStateCopyWithImpl<$Res, $Val extends ManState>
    implements $ManStateCopyWith<$Res> {
  _$ManStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ManStateEmptyImplCopyWith<$Res> {
  factory _$$ManStateEmptyImplCopyWith(
          _$ManStateEmptyImpl value, $Res Function(_$ManStateEmptyImpl) then) =
      __$$ManStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManStateEmptyImplCopyWithImpl<$Res>
    extends _$ManStateCopyWithImpl<$Res, _$ManStateEmptyImpl>
    implements _$$ManStateEmptyImplCopyWith<$Res> {
  __$$ManStateEmptyImplCopyWithImpl(
      _$ManStateEmptyImpl _value, $Res Function(_$ManStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ManStateEmptyImpl implements ManStateEmpty {
  const _$ManStateEmptyImpl();

  @override
  String toString() {
    return 'ManState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ManStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Man man, Friends friends, int friendsPage) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Man man, Friends friends, int friendsPage)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Man man, Friends friends, int friendsPage)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManStateEmpty value) empty,
    required TResult Function(_ManState value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManStateEmpty value)? empty,
    TResult? Function(_ManState value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManStateEmpty value)? empty,
    TResult Function(_ManState value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ManStateEmpty implements ManState {
  const factory ManStateEmpty() = _$ManStateEmptyImpl;
}

/// @nodoc
abstract class _$$ManStateImplCopyWith<$Res> {
  factory _$$ManStateImplCopyWith(
          _$ManStateImpl value, $Res Function(_$ManStateImpl) then) =
      __$$ManStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Man man, Friends friends, int friendsPage});

  $ManCopyWith<$Res> get man;
  $FriendsCopyWith<$Res> get friends;
}

/// @nodoc
class __$$ManStateImplCopyWithImpl<$Res>
    extends _$ManStateCopyWithImpl<$Res, _$ManStateImpl>
    implements _$$ManStateImplCopyWith<$Res> {
  __$$ManStateImplCopyWithImpl(
      _$ManStateImpl _value, $Res Function(_$ManStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? man = null,
    Object? friends = null,
    Object? friendsPage = null,
  }) {
    return _then(_$ManStateImpl(
      man: null == man
          ? _value.man
          : man // ignore: cast_nullable_to_non_nullable
              as Man,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as Friends,
      friendsPage: null == friendsPage
          ? _value.friendsPage
          : friendsPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManCopyWith<$Res> get man {
    return $ManCopyWith<$Res>(_value.man, (value) {
      return _then(_value.copyWith(man: value));
    });
  }

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FriendsCopyWith<$Res> get friends {
    return $FriendsCopyWith<$Res>(_value.friends, (value) {
      return _then(_value.copyWith(friends: value));
    });
  }
}

/// @nodoc

class _$ManStateImpl implements _ManState {
  const _$ManStateImpl(
      {required this.man, required this.friends, required this.friendsPage});

  @override
  final Man man;
  @override
  final Friends friends;
  @override
  final int friendsPage;

  @override
  String toString() {
    return 'ManState.loaded(man: $man, friends: $friends, friendsPage: $friendsPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManStateImpl &&
            (identical(other.man, man) || other.man == man) &&
            (identical(other.friends, friends) || other.friends == friends) &&
            (identical(other.friendsPage, friendsPage) ||
                other.friendsPage == friendsPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, man, friends, friendsPage);

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManStateImplCopyWith<_$ManStateImpl> get copyWith =>
      __$$ManStateImplCopyWithImpl<_$ManStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Man man, Friends friends, int friendsPage) loaded,
  }) {
    return loaded(man, friends, friendsPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Man man, Friends friends, int friendsPage)? loaded,
  }) {
    return loaded?.call(man, friends, friendsPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Man man, Friends friends, int friendsPage)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(man, friends, friendsPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManStateEmpty value) empty,
    required TResult Function(_ManState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ManStateEmpty value)? empty,
    TResult? Function(_ManState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManStateEmpty value)? empty,
    TResult Function(_ManState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ManState implements ManState {
  const factory _ManState(
      {required final Man man,
      required final Friends friends,
      required final int friendsPage}) = _$ManStateImpl;

  Man get man;
  Friends get friends;
  int get friendsPage;

  /// Create a copy of ManState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManStateImplCopyWith<_$ManStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
