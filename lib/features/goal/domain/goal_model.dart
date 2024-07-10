import 'package:freezed_annotation/freezed_annotation.dart';

import '../../men/domain/models/man_model.dart';

part 'goal_model.freezed.dart';
part 'goal_model.g.dart';

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    required final String id,
    required final List<ManModel> men,
  }) = _GoalModel;

  factory GoalModel.fromJson(final Map<String, dynamic> json) =>
      _$GoalModelFromJson(json);
}
