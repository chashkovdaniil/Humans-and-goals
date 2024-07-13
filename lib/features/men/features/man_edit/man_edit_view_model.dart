import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../men.dart';
import 'models/man_edit_view_model_state.dart';

class ManEditViewModel extends StateNotifier<ManEditViewModelState> {
  final ManInteractor _manInteractor;

  ManEditViewModel(
    this._manInteractor,
  ) : super(
          const ManEditViewModelState(
            initialModel: null,
            fullname: '',
            description: '',
            goals: [],
          ),
        );

  void attachModel(final Man man) {
    state = state.copyWith(
      initialModel: man,
      fullname: man.fullname,
      description: man.description,
      goals: man.goals,
    );
  }

  void onFullnameChanged(final String fullname) {
    state = state.copyWith(fullname: fullname);
  }

  void onDescriptionChanged(final String description) {
    state = state.copyWith(description: description);
  }

  Future<void> onSaveTap(final BuildContext context) async {
    final initialModel = state.initialModel;
    if (initialModel == null) {
      assert(false, 'InitialModel must not be null');
      return;
    }

    final changedModel = initialModel.copyWith(
      fullname: state.fullname,
      description: state.description,
    );
    state = state.copyWith(initialModel: changedModel);
    await _manInteractor.saveMan(changedModel);
    if (context.mounted) {
      context.dispatchNotification(UpdateMenNotification());
    }
  }
}
