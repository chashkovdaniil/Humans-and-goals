import 'package:flutter/material.dart';

import '../../men.dart';
import 'man_edit_page_view_model.dart';

class ManEditScope extends StatelessWidget {
  final Widget child;

  const ManEditScope({super.key, required this.child});

  static ManEditPageViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    return _ManEditScopeInherited.of(context, listen: listen).viewModel;
  }

  @override
  Widget build(final BuildContext context) {
    final menPageViewModel = MenScope.menPageViewModelOf(context);
    final viewModel = ManEditPageViewModel(menPageViewModel);

    return _ManEditScopeInherited(
      viewModel: viewModel,
      child: child,
    );
  }
}

class _ManEditScopeInherited extends InheritedWidget {
  final ManEditPageViewModel viewModel;
  const _ManEditScopeInherited({
    required super.child,
    required this.viewModel,
  });

  static _ManEditScopeInherited of(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      final result =
          context.dependOnInheritedWidgetOfExactType<_ManEditScopeInherited>();
      assert(result != null, 'No _MenScopeInherited found in context');
      return result!;
    }
    final result =
        context.getInheritedWidgetOfExactType<_ManEditScopeInherited>();
    assert(result != null, 'No _ManEditScopeInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(final _ManEditScopeInherited old) {
    return old.child != child || old.viewModel != viewModel;
  }
}
