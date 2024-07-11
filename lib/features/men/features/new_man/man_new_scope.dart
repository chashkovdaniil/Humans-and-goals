import 'package:flutter/material.dart';

import '../../men.dart';
import 'man_new_dialog_view_model.dart';

class ManNewScope extends StatelessWidget {
  final Widget child;

  const ManNewScope({super.key, required this.child});

  static ManNewDialogViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    return _ManNewScopeInherited.of(context).viewModel;
  }

  @override
  Widget build(final BuildContext context) {
    final menPageViewModel = MenScope.menPageViewModelOf(context);
    final viewModel = ManNewDialogViewModel(menPageViewModel);

    return _ManNewScopeInherited(
      viewModel: viewModel,
      child: child,
    );
  }
}

class _ManNewScopeInherited extends InheritedWidget {
  final ManNewDialogViewModel viewModel;
  const _ManNewScopeInherited({
    required this.viewModel,
    required super.child,
  });

  static _ManNewScopeInherited of(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      final result =
          context.dependOnInheritedWidgetOfExactType<_ManNewScopeInherited>();
      assert(result != null, 'No _MenScopeInherited found in context');
      return result!;
    }
    final result =
        context.getInheritedWidgetOfExactType<_ManNewScopeInherited>();
    assert(result != null, 'No _ManNewScopeInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(final _ManNewScopeInherited old) {
    return old.viewModel != viewModel;
  }
}
