import 'dart:math' as Math;

import 'package:state_notifier/state_notifier.dart';

import '../domain/interactor/man_interactor.dart';
import '../domain/models/man_model.dart';
import 'models/men_page_state.dart';

class MenPageViewModel extends StateNotifier<MenPageState> {
  final ManInteractor _manInteractor;

  MenPageViewModel(
    this._manInteractor,
  ) : super(
          const MenPageState(men: const []),
        );

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
        (index) => ManModel(
          id: ((index + Math.Random().nextDouble()) *
                  Math.Random().nextInt(state.men.length))
              .toString(),
        ),
      ),
    ]);
  }

  Future<void> onRemoveManTap(ManModel man) async {
    _manInteractor.removeMan(man);
  }

  Future<void> onNewMan() async {
    final men = await _manInteractor.getMen(15, 0);
    state = state.copyWith(men: men);
  }
}
