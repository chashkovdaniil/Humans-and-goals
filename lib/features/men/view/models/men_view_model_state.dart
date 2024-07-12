import 'package:freezed_annotation/freezed_annotation.dart';

import '../../men.dart';

part 'men_view_model_state.freezed.dart';

@freezed
class MenViewModelState with _$MenViewModelState {
  const factory MenViewModelState({
    required final List<ManModel> men,
  }) = _MenViewModelState;
}
