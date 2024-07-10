import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

import '../../domain/models/man_model.dart';
import '../../view/men_page_view_model.dart';
import 'models/man_new_dialog_state.dart';

class ManNewDialogViewModel extends StateNotifier<ManNewDialogState> {
  final MenPageViewModel _menPageViewModel;

  ManNewDialogViewModel(
    this._menPageViewModel,
  ) : super(ManNewDialogState(fullname: '', uuid: const Uuid().v4()));

  void onChangeFullname(final String fullname) {
    state = state.copyWith(fullname: fullname);
  }

  Future<void> onNewManTap() async {
    final man = ManModel(
      id: state.uuid,
      fullname: state.fullname,
      description: '',
      goals: [],
    );
    await _menPageViewModel.onNewMan(man);
  }
}
