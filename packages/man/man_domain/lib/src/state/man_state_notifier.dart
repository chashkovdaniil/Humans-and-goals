import 'package:state_notifier/state_notifier.dart';

import '../../man_domain.dart';
import '../models/friends.dart';
import '../models/man_state.dart';
import '../models/man_state_notifier_params.dart';

class ManStateNotifier extends StateNotifier<ManState> {
  static const initialFriendsPage = 0;
  final ManInteractor _interactor;
  final ManStateNotifierParams params;

  ManStateNotifier(
    this._interactor, {
    required this.params,
  }) : super(const ManState.empty());

  Future<void> loadMan(final String manId) async {
    final man = await _interactor.getMan(manId);
    state = state.map(
      loaded: (final loaded) => loaded.copyWith(man: man),
      empty: (final _) => ManState.loaded(
        man: man,
        friends: const Friends(men: <Man>[]),
        friendsPage: initialFriendsPage,
      ),
    );
  }

  Future<void> loadFriends() async {
    final man = state.mapOrNull(loaded: (final loaded) => loaded.man);
    final friendsPage = state.mapOrNull(
      loaded: (final loaded) => loaded.friendsPage,
    );
    if (man == null || friendsPage == null) {
      return;
    }

    final nextFriendsPage = friendsPage + 1;
    final friends = await _interactor.getFriends(
      man: man,
      page: nextFriendsPage,
      count: params.friendsPerPage,
    );
    state = state.map(
      loaded: (final loaded) => loaded.copyWith(
        friends: loaded.friends.copyWith(
          men: loaded.friends.men.followedBy(friends.men),
        ),
        friendsPage: nextFriendsPage,
      ),
      empty: (final _) => ManState.loaded(
        man: man,
        friends: friends,
        friendsPage: nextFriendsPage,
      ),
    );
  }
}
