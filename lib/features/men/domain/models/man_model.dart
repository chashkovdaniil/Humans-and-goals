import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../goal/domain/goal_model.dart';

part 'man_model.freezed.dart';
part 'man_model.g.dart';

@freezed
class ManModel with _$ManModel {
  const factory ManModel({
    required final String id,
    required final String fullname,
    required final String description,
    required final List<GoalModel> goals,
  }) = _ManModel;

  factory ManModel.fromJson(final Map<String, dynamic> json) =>
      _$ManModelFromJson(json);
}
