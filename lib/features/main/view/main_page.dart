import 'package:flutter/material.dart';
import 'package:goals_tracker/features/main/view/main_view_model.dart';

import '../../goals/view/goals_page.dart';
import '../../people/people.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = TabsProvider.of(context);

    return Scaffold(
      body: Center(
        child: TabsBuilder(builder: (context, tab, _) {
          switch (tab) {
            case MainPageTabs.goals:
              return const GoalsPage();
            case MainPageTabs.people:
              return const PeoplePage();
          }
        }),
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
}
