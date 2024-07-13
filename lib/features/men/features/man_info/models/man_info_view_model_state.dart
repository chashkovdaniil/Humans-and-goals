import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../men.dart';

part 'man_info_view_model_state.freezed.dart';

enum ManInfoViewModelStateStatus { idle, loading, success, error }

@freezed
class ManInfoViewModelState with _$ManInfoViewModelState {
  Man? get man => map(
        loading: (final s) => s.man,
        idle: (final _) => null,
        error: (final s) => s.man,
        success: (final s) => s.man,
      );

  const ManInfoViewModelState._();

  const factory ManInfoViewModelState.loading({
    required final Man? man,
  }) = _ManInfoViewModelStateLoading;

  const factory ManInfoViewModelState.idle() = _ManInfoViewModelStateIdle;

  const factory ManInfoViewModelState.error({
    required final Man? man,
    required final Object? error,
  }) = _ManInfoViewModelStateError;

  const factory ManInfoViewModelState.success({
    required final Man man,
  }) = _ManInfoViewModelStateSuccess;
}
