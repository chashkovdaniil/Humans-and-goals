import 'package:state_notifier/state_notifier.dart';

import '../../men.dart';
import 'models/man_info_view_model_state.dart';

class ManInfoViewModel extends StateNotifier<ManInfoViewModelState> {
  final ManInteractor _manInteractor;

  ManInfoViewModel(this._manInteractor)
      : super(const ManInfoViewModelState.idle());

  Future<void> load(final String manId) async {
    state = ManInfoViewModelState.loading(man: state.man);
    final man = await _manInteractor.getMan(manId);
    state = ManInfoViewModelState.success(man: man);
  }

  void attach(final ManModel initialModel) {
    state = state.map(
      loading: (final s) => s.copyWith(man: initialModel),
      idle: (final _) => ManInfoViewModelState.success(man: initialModel),
      error: (final s) => s.copyWith(man: initialModel),
      success: (final s) => s.copyWith(man: initialModel),
    );
  }
}
