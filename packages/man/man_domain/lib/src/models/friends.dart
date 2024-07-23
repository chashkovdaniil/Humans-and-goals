import 'package:freezed_annotation/freezed_annotation.dart';

import '../../man_domain.dart';

part 'friends.freezed.dart';
part 'friends.g.dart';

@freezed
class Friends with _$Friends {
  const factory Friends({
    /// Друзья
    required final Iterable<Man> men,
  }) = _Friends;

  factory Friends.fromJson(final Map<String, dynamic> json) =>
      _$FriendsFromJson(json);
}
