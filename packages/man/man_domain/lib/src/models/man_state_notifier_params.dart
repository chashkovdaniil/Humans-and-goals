import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_state_notifier_params.freezed.dart';
part 'man_state_notifier_params.g.dart';

@freezed
class ManStateNotifierParams with _$ManStateNotifierParams {
  const factory ManStateNotifierParams({
    required final int friendsPerPage,
  }) = _ManStateNotifierParams;

  factory ManStateNotifierParams.fromJson(Map<String, dynamic> json) =>
      _$ManStateNotifierParamsFromJson(json);
}
