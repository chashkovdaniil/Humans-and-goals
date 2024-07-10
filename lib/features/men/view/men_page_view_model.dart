import 'dart:math' as Math;

import 'package:state_notifier/state_notifier.dart';

import '../domain/models/man_model.dart';
import 'models/men_page_state.dart';

class MenPageViewModel extends StateNotifier<MenPageState> {
  MenPageViewModel()
      : super(MenPageState(
            men: List.generate(
          20,
          (id) => ManModel(
            id: id.toString(),
          ),
        )));

  List<ManModel> get men => state.men;

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
    print('onNewManTap: ${man.id}');
  }
}
