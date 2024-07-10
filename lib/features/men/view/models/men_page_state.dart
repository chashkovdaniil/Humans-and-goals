import 'package:freezed_annotation/freezed_annotation.dart';

import '../../men.dart';

part 'men_page_state.freezed.dart';

@freezed
class MenPageState with _$MenPageState {
  const factory MenPageState({
    required List<ManModel> men,
  }) = _MenPageState;
}
