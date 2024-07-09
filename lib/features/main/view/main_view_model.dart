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
}

class _TabsScope extends InheritedWidget {
  final _viewModel = TabsViewModelImpl();

  _TabsScope({
    super.key,
    required super.child,
  });

  static _TabsScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_TabsScope>()!;

  @override
  bool updateShouldNotify(covariant _TabsScope oldWidget) {
    return oldWidget._viewModel != _viewModel;
  }
}

class TabsProvider extends StatefulWidget {
  final Widget child;

  const TabsProvider({super.key, required this.child});

  @override
  State<TabsProvider> createState() => _TabsProvider();

  static TabsViewModel of(BuildContext context) =>
      _TabsScope.of(context)._viewModel;
}

class _TabsProvider extends State<TabsProvider> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _TabsScope.of(context)._viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _TabsScope(
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
    final viewModel = _TabsScope.of(context)._viewModel;

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
