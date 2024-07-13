import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:man_domain/man_domain.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  const factory Goal({
    required final String id,
    required final List<Man> men,
  }) = _Goal;

  factory Goal.fromJson(final Map<String, dynamic> json) =>
      _$GoalFromJson(json);
}
