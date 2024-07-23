import 'package:flutter/cupertino.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

import '../../men.dart';
import 'models/man_new_view_model_state.dart';

class ManNewViewModel extends StateNotifier<ManNewViewModelState> {
  final ManInteractor _manInteractor;

  ManNewViewModel(
    this._manInteractor,
  ) : super(ManNewViewModelState(fullname: '', uuid: const Uuid().v4()));

  void onChangeFullname(final String fullname) {
    state = state.copyWith(fullname: fullname);
  }

  Future<void> onNewManTap(final BuildContext context) async {
    final man = Man(
      id: state.uuid,
      fullname: state.fullname,
      description: '',
      goals: [],
      link: '',
      phone: '',
    );
    await _manInteractor.addMan(man);

    if (context.mounted) {
      context.dispatchNotification(UpdateMenNotification());
    }
  }
}
