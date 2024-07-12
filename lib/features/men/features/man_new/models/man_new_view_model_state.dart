import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_new_view_model_state.freezed.dart';

@freezed
class ManNewViewModelState with _$ManNewViewModelState {
  const factory ManNewViewModelState({
    required final String fullname,
    required final String uuid,
  }) = _ManNewViewModelState;
}
