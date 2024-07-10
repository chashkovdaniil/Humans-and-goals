import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_new_dialog_state.freezed.dart';

@freezed
class ManNewDialogState with _$ManNewDialogState {
  const factory ManNewDialogState({
    required final String fullname,
    required final String uuid,
  }) = _ManNewDialogState;
}
