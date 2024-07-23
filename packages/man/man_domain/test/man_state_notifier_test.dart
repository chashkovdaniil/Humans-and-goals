import 'package:man_domain/man_domain.dart';
import 'package:man_domain/src/models/friends.dart';
import 'package:man_domain/src/models/man_state.dart';
import 'package:man_domain/src/models/man_state_notifier_params.dart';
import 'package:man_domain/src/state/man_state_notifier.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mock_man_interactor.dart';

void main() {
  final manInteractor = MockManInteractor();

  tearDown(() {
    reset(manInteractor);
  });
  group('Man', () {
    test('Empty man', () {
      final stateNotifier = ManStateNotifier(manInteractor, params: params);
      final listener = MockListener();
      stateNotifier.addListener(listener, fireImmediately: true);
      verifyZeroInteractions(listener);
    });

    test('Load man', () async {
      final stateNotifier = ManStateNotifier(manInteractor, params: params);
      when(() => manInteractor.getMan(manId)).thenAnswer(answerMan);
      void listener(final ManState state) {
        expect(state.mapOrNull(loaded: (final loaded) => loaded.man), man);
      }

      await stateNotifier.loadMan(manId);
      stateNotifier.addListener(listener);
    });
  });

  group('Friends', () {
    test('Man with empty friends', () async {
      final stateNotifier = ManStateNotifier(manInteractor, params: params);
      when(() => manInteractor.getMan(manId)).thenAnswer(answerMan);
      await stateNotifier.loadMan(manId);
      void friendsListener(final ManState state) {
        expect(
          state.mapOrNull(loaded: (final loaded) => loaded.friends.men),
          isEmpty,
        );
      }

      stateNotifier.addListener(friendsListener);

      verifyNever(() =>
          manInteractor.getFriends(man: man, page: 0, count: friendsPerPage));
      verifyNever(() =>
          manInteractor.getFriends(man: man, page: 1, count: friendsPerPage));
    });

    test('Load friends', () async {
      final stateNotifier = ManStateNotifier(manInteractor, params: params);
      when(() => manInteractor.getMan(manId)).thenAnswer(answerMan);
      when(
        () => manInteractor.getFriends(
          man: man,
          page: 1,
          count: friendsPerPage,
        ),
      ).thenAnswer(answerFirstFriends);
      when(
        () => manInteractor.getFriends(
          man: man,
          page: 2,
          count: friendsPerPage,
        ),
      ).thenAnswer(answerSecondFriends);
      await stateNotifier.loadMan(manId);
      await stateNotifier.loadFriends();
      await stateNotifier.loadFriends();
      void friendsListener(final ManState state) {
        final friendsPage = state.mapOrNull(
          loaded: (final loaded) => loaded.friendsPage,
        );
        final friends = state.mapOrNull(
          loaded: (final loaded) => loaded.friends.men,
        );
        expect(
          state.mapOrNull(loaded: (final loaded) => loaded.friends.men),
          isNotEmpty,
        );
        if (friendsPage == 1) {
          expect(
            friends?.length,
            firstFriends.men.length,
          );
        } else if (friendsPage == 2) {
          expect(
            friends?.length,
            firstFriends.men.followedBy(secondFriends.men).length,
          );
        }
      }

      stateNotifier.addListener(friendsListener, fireImmediately: true);
      verify(() => manInteractor.getFriends(
            man: man,
            page: 1,
            count: friendsPerPage,
          )).called(1);
      verify(() => manInteractor.getFriends(
            man: man,
            page: 2,
            count: friendsPerPage,
          )).called(1);
    });
  });
}

class MockListener with Mock {
  void call(final ManState state) {
    print('called');
  }
}

const friendsPerPage = 2;
const manId = 'manId';

const man = Man(
  id: manId,
  fullname: 'fullname',
  description: 'description',
  goals: [],
  link: 'link',
  phone: 'phone',
);
const params = ManStateNotifierParams(friendsPerPage: friendsPerPage);

Future<Man> answerMan(final _) => Future.value(man);
final firstFriends = Friends(
  men: [
    man.copyWith(id: '1'),
    man.copyWith(id: '2'),
  ],
);
final secondFriends = Friends(
  men: [
    man.copyWith(id: '3'),
    man.copyWith(id: '4'),
  ],
);

Future<Friends> answerFirstFriends(final _) => Future.value(firstFriends);

Future<Friends> answerSecondFriends(final _) => Future.value(secondFriends);
