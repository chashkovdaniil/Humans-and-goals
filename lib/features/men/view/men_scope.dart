import 'package:flutter/material.dart';

import '../domain/data/man_repository_impl.dart';
import '../domain/interactor/man_interactor.dart';
import 'men_page_view_model.dart';

class MenScope extends StatelessWidget {
  final Widget child;

  const MenScope({super.key, required this.child});

  static MenPageViewModel menPageViewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).menPageViewModel;
  }

  static ManInteractor manInteractorOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).manInteractor;
  }

  @override
  Widget build(final BuildContext context) {
    final manRepository = ManRepositoryImpl();
    final manInteractor = ManInteractor(manRepository: manRepository);
    final menPageViewModel = MenPageViewModel(manInteractor);
    menPageViewModel.init();

    return _MenScopeInherited(
      menPageViewModel: menPageViewModel,
      manInteractor: manInteractor,
      child: child,
    );
  }
}

class _MenScopeInherited extends InheritedWidget {
  final MenPageViewModel menPageViewModel;
  final ManInteractor manInteractor;

  const _MenScopeInherited({
    required super.child,
    required this.menPageViewModel,
    required this.manInteractor,
  });

  static _MenScopeInherited of(
    final BuildContext context, {
    final bool listen = true,
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
  bool updateShouldNotify(final _MenScopeInherited old) {
    return old.menPageViewModel != menPageViewModel ||
        old.child != child ||
        old.manInteractor != manInteractor;
  }
}
