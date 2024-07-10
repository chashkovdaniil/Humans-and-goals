import 'package:flutter/material.dart';
import 'package:goals_tracker/features/men/domain/data/man_repository_impl.dart';
import 'package:goals_tracker/features/men/domain/interactor/man_interactor.dart';
import 'package:goals_tracker/features/men/view/men_page_view_model.dart';

import '../features/new_man/man_new_dialog_view_model.dart';

class MenScope extends StatelessWidget {
  final Widget child;

  const MenScope({super.key, required this.child});

  static MenPageViewModel menPageViewModelOf(
    BuildContext context, {
    bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).menPageViewModel;
  }

  static ManNewDialogViewModel manNewDialogViewModelOf(
    BuildContext context, {
    bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).manNewDialogViewModel;
  }

  static ManInteractor manInteractorOf(
    BuildContext context, {
    bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).manInteractor;
  }

  @override
  Widget build(BuildContext context) {
    final manRepository = ManRepositoryImpl();
    final manInteractor = ManInteractor(manRepository: manRepository);
    final menPageViewModel = MenPageViewModel(manInteractor);
    menPageViewModel.init();

    return _MenScopeInherited(
      menPageViewModel: menPageViewModel,
      manNewDialogViewModel: ManNewDialogViewModel(
        manInteractor,
        menPageViewModel,
      ),
      manInteractor: manInteractor,
      child: child,
    );
  }
}

class _MenScopeInherited extends InheritedWidget {
  final MenPageViewModel menPageViewModel;
  final ManNewDialogViewModel manNewDialogViewModel;
  final ManInteractor manInteractor;

  const _MenScopeInherited({
    required Widget child,
    required this.menPageViewModel,
    required this.manNewDialogViewModel,
    required this.manInteractor,
  }) : super(child: child);

  static _MenScopeInherited of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      final result =
          context.dependOnInheritedWidgetOfExactType<_MenScopeInherited>();
      assert(result != null, 'No _MenScopeInherited found in context');
      return result!;
    }
    final result = context.getInheritedWidgetOfExactType<_MenScopeInherited>();
    assert(result != null, 'No _MenScopeInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(_MenScopeInherited old) {
    return old.menPageViewModel != menPageViewModel;
  }
}
