import 'package:freezed_annotation/freezed_annotation.dart';

import 'friends.dart';
import 'man.dart';

part 'man_state.freezed.dart';

@freezed
class ManState with _$ManState {
  const factory ManState.empty() = ManStateEmpty;

  const factory ManState.loaded({
    required final Man man,
    required final Friends friends,
    required final int friendsPage,
  }) = _ManState;
}
