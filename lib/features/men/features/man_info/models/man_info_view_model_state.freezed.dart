// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'man_info_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManInfoViewModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Man? man) loading,
    required TResult Function() idle,
    required TResult Function(Man? man, Object? error) error,
    required TResult Function(Man man) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Man? man)? loading,
    TResult? Function()? idle,
    TResult? Function(Man? man, Object? error)? error,
    TResult? Function(Man man)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Man? man)? loading,
    TResult Function()? idle,
    TResult Function(Man? man, Object? error)? error,
    TResult Function(Man man)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManInfoViewModelStateLoading value) loading,
    required TResult Function(_ManInfoViewModelStateIdle value) idle,
    required TResult Function(_ManInfoViewModelStateError value) error,
    required TResult Function(_ManInfoViewModelStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManInfoViewModelStateLoading value)? loading,
    TResult? Function(_ManInfoViewModelStateIdle value)? idle,
    TResult? Function(_ManInfoViewModelStateError value)? error,
    TResult? Function(_ManInfoViewModelStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManInfoViewModelStateLoading value)? loading,
    TResult Function(_ManInfoViewModelStateIdle value)? idle,
    TResult Function(_ManInfoViewModelStateError value)? error,
    TResult Function(_ManInfoViewModelStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManInfoViewModelStateCopyWith<$Res> {
  factory $ManInfoViewModelStateCopyWith(ManInfoViewModelState value,
          $Res Function(ManInfoViewModelState) then) =
      _$ManInfoViewModelStateCopyWithImpl<$Res, ManInfoViewModelState>;
}

/// @nodoc
class _$ManInfoViewModelStateCopyWithImpl<$Res,
        $Val extends ManInfoViewModelState>
    implements $ManInfoViewModelStateCopyWith<$Res> {
  _$ManInfoViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ManInfoViewModelStateLoadingImplCopyWith<$Res> {
  factory _$$ManInfoViewModelStateLoadingImplCopyWith(
          _$ManInfoViewModelStateLoadingImpl value,
          $Res Function(_$ManInfoViewModelStateLoadingImpl) then) =
      __$$ManInfoViewModelStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Man? man});

  $ManCopyWith<$Res>? get man;
}

/// @nodoc
class __$$ManInfoViewModelStateLoadingImplCopyWithImpl<$Res>
    extends _$ManInfoViewModelStateCopyWithImpl<$Res,
        _$ManInfoViewModelStateLoadingImpl>
    implements _$$ManInfoViewModelStateLoadingImplCopyWith<$Res> {
  __$$ManInfoViewModelStateLoadingImplCopyWithImpl(
      _$ManInfoViewModelStateLoadingImpl _value,
      $Res Function(_$ManInfoViewModelStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? man = freezed,
  }) {
    return _then(_$ManInfoViewModelStateLoadingImpl(
      man: freezed == man
          ? _value.man
          : man // ignore: cast_nullable_to_non_nullable
              as Man?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ManCopyWith<$Res>? get man {
    if (_value.man == null) {
      return null;
    }

    return $ManCopyWith<$Res>(_value.man!, (value) {
      return _then(_value.copyWith(man: value));
    });
  }
}

/// @nodoc

class _$ManInfoViewModelStateLoadingImpl extends _ManInfoViewModelStateLoading {
  const _$ManInfoViewModelStateLoadingImpl({required this.man}) : super._();

  @override
  final Man? man;

  @override
  String toString() {
    return 'ManInfoViewModelState.loading(man: $man)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManInfoViewModelStateLoadingImpl &&
            (identical(other.man, man) || other.man == man));
  }

  @override
  int get hashCode => Object.hash(runtimeType, man);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManInfoViewModelStateLoadingImplCopyWith<
          _$ManInfoViewModelStateLoadingImpl>
      get copyWith => __$$ManInfoViewModelStateLoadingImplCopyWithImpl<
          _$ManInfoViewModelStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Man? man) loading,
    required TResult Function() idle,
    required TResult Function(Man? man, Object? error) error,
    required TResult Function(Man man) success,
  }) {
    return loading(man);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Man? man)? loading,
    TResult? Function()? idle,
    TResult? Function(Man? man, Object? error)? error,
    TResult? Function(Man man)? success,
  }) {
    return loading?.call(man);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Man? man)? loading,
    TResult Function()? idle,
    TResult Function(Man? man, Object? error)? error,
    TResult Function(Man man)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(man);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManInfoViewModelStateLoading value) loading,
    required TResult Function(_ManInfoViewModelStateIdle value) idle,
    required TResult Function(_ManInfoViewModelStateError value) error,
    required TResult Function(_ManInfoViewModelStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManInfoViewModelStateLoading value)? loading,
    TResult? Function(_ManInfoViewModelStateIdle value)? idle,
    TResult? Function(_ManInfoViewModelStateError value)? error,
    TResult? Function(_ManInfoViewModelStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManInfoViewModelStateLoading value)? loading,
    TResult Function(_ManInfoViewModelStateIdle value)? idle,
    TResult Function(_ManInfoViewModelStateError value)? error,
    TResult Function(_ManInfoViewModelStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ManInfoViewModelStateLoading extends ManInfoViewModelState {
  const factory _ManInfoViewModelStateLoading({required final Man? man}) =
      _$ManInfoViewModelStateLoadingImpl;
  const _ManInfoViewModelStateLoading._() : super._();

  Man? get man;
  @JsonKey(ignore: true)
  _$$ManInfoViewModelStateLoadingImplCopyWith<
          _$ManInfoViewModelStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ManInfoViewModelStateIdleImplCopyWith<$Res> {
  factory _$$ManInfoViewModelStateIdleImplCopyWith(
          _$ManInfoViewModelStateIdleImpl value,
          $Res Function(_$ManInfoViewModelStateIdleImpl) then) =
      __$$ManInfoViewModelStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManInfoViewModelStateIdleImplCopyWithImpl<$Res>
    extends _$ManInfoViewModelStateCopyWithImpl<$Res,
        _$ManInfoViewModelStateIdleImpl>
    implements _$$ManInfoViewModelStateIdleImplCopyWith<$Res> {
  __$$ManInfoViewModelStateIdleImplCopyWithImpl(
      _$ManInfoViewModelStateIdleImpl _value,
      $Res Function(_$ManInfoViewModelStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ManInfoViewModelStateIdleImpl extends _ManInfoViewModelStateIdle {
  const _$ManInfoViewModelStateIdleImpl() : super._();

  @override
  String toString() {
    return 'ManInfoViewModelState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManInfoViewModelStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Man? man) loading,
    required TResult Function() idle,
    required TResult Function(Man? man, Object? error) error,
    required TResult Function(Man man) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Man? man)? loading,
    TResult? Function()? idle,
    TResult? Function(Man? man, Object? error)? error,
    TResult? Function(Man man)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Man? man)? loading,
    TResult Function()? idle,
    TResult Function(Man? man, Object? error)? error,
    TResult Function(Man man)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManInfoViewModelStateLoading value) loading,
    required TResult Function(_ManInfoViewModelStateIdle value) idle,
    required TResult Function(_ManInfoViewModelStateError value) error,
    required TResult Function(_ManInfoViewModelStateSuccess value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManInfoViewModelStateLoading value)? loading,
    TResult? Function(_ManInfoViewModelStateIdle value)? idle,
    TResult? Function(_ManInfoViewModelStateError value)? error,
    TResult? Function(_ManInfoViewModelStateSuccess value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManInfoViewModelStateLoading value)? loading,
    TResult Function(_ManInfoViewModelStateIdle value)? idle,
    TResult Function(_ManInfoViewModelStateError value)? error,
    TResult Function(_ManInfoViewModelStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _ManInfoViewModelStateIdle extends ManInfoViewModelState {
  const factory _ManInfoViewModelStateIdle() = _$ManInfoViewModelStateIdleImpl;
  const _ManInfoViewModelStateIdle._() : super._();
}

/// @nodoc
abstract class _$$ManInfoViewModelStateErrorImplCopyWith<$Res> {
  factory _$$ManInfoViewModelStateErrorImplCopyWith(
          _$ManInfoViewModelStateErrorImpl value,
          $Res Function(_$ManInfoViewModelStateErrorImpl) then) =
      __$$ManInfoViewModelStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Man? man, Object? error});

  $ManCopyWith<$Res>? get man;
}

/// @nodoc
class __$$ManInfoViewModelStateErrorImplCopyWithImpl<$Res>
    extends _$ManInfoViewModelStateCopyWithImpl<$Res,
        _$ManInfoViewModelStateErrorImpl>
    implements _$$ManInfoViewModelStateErrorImplCopyWith<$Res> {
  __$$ManInfoViewModelStateErrorImplCopyWithImpl(
      _$ManInfoViewModelStateErrorImpl _value,
      $Res Function(_$ManInfoViewModelStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? man = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ManInfoViewModelStateErrorImpl(
      man: freezed == man
          ? _value.man
          : man // ignore: cast_nullable_to_non_nullable
              as Man?,
      error: freezed == error ? _value.error : error,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ManCopyWith<$Res>? get man {
    if (_value.man == null) {
      return null;
    }

    return $ManCopyWith<$Res>(_value.man!, (value) {
      return _then(_value.copyWith(man: value));
    });
  }
}

/// @nodoc

class _$ManInfoViewModelStateErrorImpl extends _ManInfoViewModelStateError {
  const _$ManInfoViewModelStateErrorImpl(
      {required this.man, required this.error})
      : super._();

  @override
  final Man? man;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ManInfoViewModelState.error(man: $man, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManInfoViewModelStateErrorImpl &&
            (identical(other.man, man) || other.man == man) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, man, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManInfoViewModelStateErrorImplCopyWith<_$ManInfoViewModelStateErrorImpl>
      get copyWith => __$$ManInfoViewModelStateErrorImplCopyWithImpl<
          _$ManInfoViewModelStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Man? man) loading,
    required TResult Function() idle,
    required TResult Function(Man? man, Object? error) error,
    required TResult Function(Man man) success,
  }) {
    return error(man, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Man? man)? loading,
    TResult? Function()? idle,
    TResult? Function(Man? man, Object? error)? error,
    TResult? Function(Man man)? success,
  }) {
    return error?.call(man, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Man? man)? loading,
    TResult Function()? idle,
    TResult Function(Man? man, Object? error)? error,
    TResult Function(Man man)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(man, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManInfoViewModelStateLoading value) loading,
    required TResult Function(_ManInfoViewModelStateIdle value) idle,
    required TResult Function(_ManInfoViewModelStateError value) error,
    required TResult Function(_ManInfoViewModelStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManInfoViewModelStateLoading value)? loading,
    TResult? Function(_ManInfoViewModelStateIdle value)? idle,
    TResult? Function(_ManInfoViewModelStateError value)? error,
    TResult? Function(_ManInfoViewModelStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManInfoViewModelStateLoading value)? loading,
    TResult Function(_ManInfoViewModelStateIdle value)? idle,
    TResult Function(_ManInfoViewModelStateError value)? error,
    TResult Function(_ManInfoViewModelStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ManInfoViewModelStateError extends ManInfoViewModelState {
  const factory _ManInfoViewModelStateError(
      {required final Man? man,
      required final Object? error}) = _$ManInfoViewModelStateErrorImpl;
  const _ManInfoViewModelStateError._() : super._();

  Man? get man;
  Object? get error;
  @JsonKey(ignore: true)
  _$$ManInfoViewModelStateErrorImplCopyWith<_$ManInfoViewModelStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ManInfoViewModelStateSuccessImplCopyWith<$Res> {
  factory _$$ManInfoViewModelStateSuccessImplCopyWith(
          _$ManInfoViewModelStateSuccessImpl value,
          $Res Function(_$ManInfoViewModelStateSuccessImpl) then) =
      __$$ManInfoViewModelStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Man man});

  $ManCopyWith<$Res> get man;
}

/// @nodoc
class __$$ManInfoViewModelStateSuccessImplCopyWithImpl<$Res>
    extends _$ManInfoViewModelStateCopyWithImpl<$Res,
        _$ManInfoViewModelStateSuccessImpl>
    implements _$$ManInfoViewModelStateSuccessImplCopyWith<$Res> {
  __$$ManInfoViewModelStateSuccessImplCopyWithImpl(
      _$ManInfoViewModelStateSuccessImpl _value,
      $Res Function(_$ManInfoViewModelStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? man = null,
  }) {
    return _then(_$ManInfoViewModelStateSuccessImpl(
      man: null == man
          ? _value.man
          : man // ignore: cast_nullable_to_non_nullable
              as Man,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ManCopyWith<$Res> get man {
    return $ManCopyWith<$Res>(_value.man, (value) {
      return _then(_value.copyWith(man: value));
    });
  }
}

/// @nodoc

class _$ManInfoViewModelStateSuccessImpl extends _ManInfoViewModelStateSuccess {
  const _$ManInfoViewModelStateSuccessImpl({required this.man}) : super._();

  @override
  final Man man;

  @override
  String toString() {
    return 'ManInfoViewModelState.success(man: $man)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManInfoViewModelStateSuccessImpl &&
            (identical(other.man, man) || other.man == man));
  }

  @override
  int get hashCode => Object.hash(runtimeType, man);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManInfoViewModelStateSuccessImplCopyWith<
          _$ManInfoViewModelStateSuccessImpl>
      get copyWith => __$$ManInfoViewModelStateSuccessImplCopyWithImpl<
          _$ManInfoViewModelStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Man? man) loading,
    required TResult Function() idle,
    required TResult Function(Man? man, Object? error) error,
    required TResult Function(Man man) success,
  }) {
    return success(man);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Man? man)? loading,
    TResult? Function()? idle,
    TResult? Function(Man? man, Object? error)? error,
    TResult? Function(Man man)? success,
  }) {
    return success?.call(man);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Man? man)? loading,
    TResult Function()? idle,
    TResult Function(Man? man, Object? error)? error,
    TResult Function(Man man)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(man);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManInfoViewModelStateLoading value) loading,
    required TResult Function(_ManInfoViewModelStateIdle value) idle,
    required TResult Function(_ManInfoViewModelStateError value) error,
    required TResult Function(_ManInfoViewModelStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManInfoViewModelStateLoading value)? loading,
    TResult? Function(_ManInfoViewModelStateIdle value)? idle,
    TResult? Function(_ManInfoViewModelStateError value)? error,
    TResult? Function(_ManInfoViewModelStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManInfoViewModelStateLoading value)? loading,
    TResult Function(_ManInfoViewModelStateIdle value)? idle,
    TResult Function(_ManInfoViewModelStateError value)? error,
    TResult Function(_ManInfoViewModelStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ManInfoViewModelStateSuccess extends ManInfoViewModelState {
  const factory _ManInfoViewModelStateSuccess({required final Man man}) =
      _$ManInfoViewModelStateSuccessImpl;
  const _ManInfoViewModelStateSuccess._() : super._();

  Man get man;
  @JsonKey(ignore: true)
  _$$ManInfoViewModelStateSuccessImplCopyWith<
          _$ManInfoViewModelStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
