import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goal_domain/goal_domain.dart';

part 'man.freezed.dart';
part 'man.g.dart';

@freezed
class Man with _$Man {
  const factory Man({
    /// Идентификатор человека
    required final String id,

    /// Полное имя человека
    required final String fullname,

    /// Описание человека
    required final String description,

    /// Цели, с которыми может помочь пользователь
    required final List<Goal> goals,

    /// Ссылка на человека из внешней среды
    required final String link,

    /// Номер телефона
    required final String phone,
  }) = _Man;

  factory Man.fromJson(final Map<String, dynamic> json) => _$ManFromJson(json);
}
