import 'package:flutter/material.dart';
import 'package:goals_tracker/features/men/view/men_page_view_model.dart';

class MenScope extends StatelessWidget {
  final Widget child;

  const MenScope({super.key, required this.child});

  static MenPageViewModel menPageViewModelOf(
    BuildContext context, {
    bool listen = true,
  }) {
    return _MenScopeInherited.of(context, listen: listen).menPageViewModel;
  }

  @override
  Widget build(BuildContext context) {
    return _MenScopeInherited(
      menPageViewModel: MenPageViewModel(),
      child: child,
    );
  }
}

class _MenScopeInherited extends InheritedWidget {
  final MenPageViewModel menPageViewModel;

  const _MenScopeInherited({
    super.key,
    required Widget child,
    required this.menPageViewModel,
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
