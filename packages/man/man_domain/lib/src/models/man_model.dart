import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_model.freezed.dart';
part 'man_model.g.dart';

final class GoalModel {
  static GoalModel fromJson(Object? object) => GoalModel();
}

@freezed
class ManModel with _$ManModel {
  const factory ManModel({
    /// Идентификатор человека
    required final String id,

    /// Полное имя человека
    required final String fullname,

    /// Описание человека
    required final String description,

    /// Цели, с которыми может помочь пользователь
    required final List<GoalModel> goals,
  }) = _ManModel;

  factory ManModel.fromJson(final Map<String, dynamic> json) =>
      _$ManModelFromJson(json);
}
