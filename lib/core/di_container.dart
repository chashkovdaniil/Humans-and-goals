import 'package:flutter/material.dart';

import '../features/main/view/main_view_model.dart';

abstract interface class DIContainer {
  TabsViewModel get tabsViewModel;
}

class DIContainerInherited extends InheritedWidget {
  final TabsViewModel tabsViewModel;

  const DIContainerInherited({
    super.key,
    required this.tabsViewModel,
    required super.child,
  });

  static DIContainerInherited of(final BuildContext context) {
    final DIContainerInherited? result =
        context.dependOnInheritedWidgetOfExactType<DIContainerInherited>();
    assert(result != null, 'No DIContainerInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(final DIContainerInherited oldWidget) {
    return oldWidget.tabsViewModel != tabsViewModel;
  }
}
