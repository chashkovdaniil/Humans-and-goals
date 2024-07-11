import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../men.dart';
import '../../view/men_page_view_model.dart';
import '../man/view/man_updated_notification.dart';
import 'models/man_edit_page_state.dart';

class ManEditPageViewModel extends StateNotifier<ManEditPageState> {
  final MenPageViewModel _menPageViewModel;

  ManEditPageViewModel(
    this._menPageViewModel,
  ) : super(
          const ManEditPageState(
            initialModel: null,
            fullname: '',
            description: '',
            goals: [],
          ),
        );

  void attachModel(final ManModel man) {
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
    await _menPageViewModel.onSaveMan(changedModel);

    if (context.mounted) {
      context.dispatchNotification(ManUpdatedNotification(id: changedModel.id));
    } else {
      assert(false, 'BuildContext must not be null');
    }
  }
}
