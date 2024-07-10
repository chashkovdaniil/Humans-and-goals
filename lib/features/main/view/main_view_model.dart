import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum MainPageTabs { goals, people }

abstract interface class TabsViewModel
    implements ValueListenable<MainPageTabs> {
  MainPageTabs get currentTab;

  void openGoalsTab();

  void openPeopleTab();

  void openTabByIndex(int index);
}

final class TabsViewModelImpl extends ValueNotifier<MainPageTabs>
    implements TabsViewModel {
  TabsViewModelImpl() : super(MainPageTabs.goals);

  @override
  MainPageTabs get currentTab => value;

  @override
  void openGoalsTab() {
    value = MainPageTabs.goals;
  }

  @override
  void openPeopleTab() {
    value = MainPageTabs.people;
  }

  @override
  void openTabByIndex(int index) {
    value = MainPageTabs.values[index];
  }

  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
  }
}

class _TabsScope extends InheritedWidget {
  final TabsViewModel viewModel;

  _TabsScope({
    super.key,
    required this.viewModel,
    required super.child,
  });

  static _TabsScope of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context.dependOnInheritedWidgetOfExactType<_TabsScope>()!;
    }
    return context.getInheritedWidgetOfExactType<_TabsScope>()!;
  }

  @override
  bool updateShouldNotify(covariant _TabsScope oldWidget) {
    return oldWidget.viewModel != viewModel;
  }
}

class TabsProvider extends StatefulWidget {
  final Widget child;

  const TabsProvider({super.key, required this.child});

  @override
  State<TabsProvider> createState() => _TabsProvider();

  static TabsViewModel of(BuildContext context, {bool listen = true}) =>
      _TabsScope.of(context, listen: listen).viewModel;
}

class _TabsProvider extends State<TabsProvider> {
  late final TabsViewModelImpl viewModel;

  @override
  void initState() {
    viewModel = TabsViewModelImpl();
    super.initState();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _TabsScope(
      viewModel: viewModel,
      child: widget.child,
    );
  }
}

class TabsBuilder extends StatelessWidget {
  final Widget? child;
  final Widget Function(BuildContext, MainPageTabs, Widget?) builder;

  const TabsBuilder({super.key, required this.builder, this.child});

  @override
  Widget build(BuildContext context) {
    final viewModel = _TabsScope.of(context).viewModel;

    return ValueListenableBuilder(
      valueListenable: viewModel,
      builder: (context, tab, child) => builder(
        context,
        viewModel.currentTab,
        child,
      ),
      child: child,
    );
  }
}
