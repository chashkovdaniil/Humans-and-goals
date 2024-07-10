import 'package:flutter/material.dart';

import '../../goals/view/goals_page.dart';
import '../../men/men.dart';
import 'main_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    TabsProvider.of(context, listen: false).addListener(_onChangePage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final viewModel = TabsProvider.of(context);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          GoalsPage(),
          MenPage(),
        ],
      ),
      bottomNavigationBar: TabsBuilder(
        builder: (final context, final tab, final _) => BottomNavigationBar(
          currentIndex: tab.index,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (final index) {
            viewModel.openTabByIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.stars),
              label: 'Goals',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_rounded), label: 'People'),
          ],
        ),
      ),
    );
  }

  void _onChangePage() {
    if (!mounted) {
      return;
    }
    final currentTab = TabsProvider.of(context, listen: false).currentTab;
    _pageController.jumpToPage(currentTab.index);
  }
}
