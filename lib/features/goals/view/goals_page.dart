import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/goal/view/goal_new_dialog.dart';

import '../../goal/goal.dart';
import '../../goal/view/goal_page.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Goals'),
      ),
      body: GoalsListComponent(
        goalsList: List.generate(20, (id) => GoalModel(id: id.toString(),),),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('New goal'),
        icon: Icon(Icons.add),
        onPressed: () {
          context.goNamed(GoalNewDialog.routeName);
        },
      ),
    );
  }
}
