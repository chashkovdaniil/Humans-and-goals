import 'package:flutter/material.dart';
import 'package:goals_tracker/features/main/view/main_view_model.dart';

import '../../goals/view/goals_page.dart';
import '../../men/men.dart';

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
  Widget build(BuildContext context) {
    final viewModel = TabsProvider.of(context);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          const GoalsPage(),
          const MenPage(),
        ],
      ),
      bottomNavigationBar: TabsBuilder(
        builder: (context, tab, _) => BottomNavigationBar(
          currentIndex: tab.index,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
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
