import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../goal/goal.dart';
import '../../../men.dart';

part 'man_edit_page_state.freezed.dart';
part 'man_edit_page_state.g.dart';

@freezed
class ManEditPageState with _$ManEditPageState {
  const factory ManEditPageState({
    required final ManModel? initialModel,
    required final String fullname,
    required final String description,
    required final List<GoalModel> goals,
  }) = _ManEditPageState;

  factory ManEditPageState.fromJson(Map<String, dynamic> json) =>
      _$ManEditPageStateFromJson(json);
}
