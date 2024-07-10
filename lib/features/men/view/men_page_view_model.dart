import 'dart:math' as math;

import 'package:state_notifier/state_notifier.dart';

import '../domain/interactor/man_interactor.dart';
import '../domain/models/man_model.dart';
import 'models/men_page_state.dart';

class MenPageViewModel extends StateNotifier<MenPageState> {
  final ManInteractor _manInteractor;

  MenPageViewModel(
    this._manInteractor,
  ) : super(const MenPageState(men: []));

  List<ManModel> get men => state.men;

  Future<void> init() async {
    final men = await _manInteractor.getMen(10, 0);
    state = state.copyWith(
      men: men,
    );
  }

  Future<void> onScrollDown() async {
    state = state.copyWith(men: [
      ...state.men,
      ...List.generate(
        5,
        (final index) => ManModel(
          id: ((index + math.Random().nextDouble()) *
                  math.Random().nextInt(state.men.length))
              .toString(),
          fullname: 'ff',
          description: '',
          goals: [],
        ),
      ),
    ]);
  }

  Future<void> onRemoveManTap(final ManModel man) async {
    _manInteractor.removeMan(man);
    final men = await _manInteractor.getMen(15, 0);
    state = state.copyWith(men: men);
  }

  Future<void> onNewMan(final ManModel man) async {
    await _manInteractor.addMan(man);
    final men = await _manInteractor.getMen(15, 0);
    state = state.copyWith(men: men);
  }
}
