import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../goal/goal.dart';
import '../../../men.dart';

part 'man_edit_view_model_state.freezed.dart';

@freezed
class ManEditViewModelState with _$ManEditViewModelState {
  const factory ManEditViewModelState({
    required final ManModel? initialModel,
    required final String fullname,
    required final String description,
    required final List<GoalModel> goals,
  }) = _ManEditViewModelState;
}
