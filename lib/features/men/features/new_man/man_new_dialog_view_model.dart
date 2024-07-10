import 'package:state_notifier/state_notifier.dart';

import '../../domain/interactor/man_interactor.dart';
import '../../domain/models/man_model.dart';
import '../../view/men_page_view_model.dart';
import 'models/man_new_dialog_state.dart';

class ManNewDialogViewModel extends StateNotifier<ManNewDialogState> {
  final ManInteractor _manInteractor;
  final MenPageViewModel _menPageViewModel;

  ManNewDialogViewModel(
    this._manInteractor,
    this._menPageViewModel,
  ) : super(ManNewDialogState());

  Future<void> onNewManTap(ManModel man) async {
    _manInteractor.addMan(man);
    _menPageViewModel.onNewMan();
  }
}
