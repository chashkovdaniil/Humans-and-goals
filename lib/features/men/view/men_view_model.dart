import 'dart:math' as math;

import 'package:state_notifier/state_notifier.dart';

import '../men.dart';
import 'models/men_view_model_state.dart';

class MenViewModel extends StateNotifier<MenViewModelState> {
  final ManInteractor _manInteractor;

  MenViewModel(
    this._manInteractor,
  ) : super(const MenViewModelState(men: []));

  List<Man> get men => state.men;

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
        (final index) => Man(
          id: ((index + math.Random().nextDouble()) *
                  math.Random().nextInt(state.men.length))
              .toString(),
          fullname: 'ff',
          description: '',
          goals: [],
          link: '',
          phone: '',
        ),
      ),
    ]);
  }

  Future<void> onRemoveManTap(final Man man) async {
    _manInteractor.removeMan(man);
    final men = await _manInteractor.getMen(15, 0);
    state = state.copyWith(men: men);
  }

  Future<void> onUpdateListByNotification() async {
    state = state.copyWith(
      men: await _manInteractor.getMen(15, 10),
    );
  }
}
