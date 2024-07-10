import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../goal/goal.dart';
import '../../goal/view/goal_new_dialog.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Goals'),
      ),
      body: GoalsListComponent(
        goalsList: List.generate(
          20,
          (final id) => GoalModel(
            id: id.toString(),
            men: [],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('New goal'),
        icon: const Icon(Icons.add),
        onPressed: () {
          context.goNamed(GoalNewDialog.routeName);
        },
      ),
    );
  }
}
