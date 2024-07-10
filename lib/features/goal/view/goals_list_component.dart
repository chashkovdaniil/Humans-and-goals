import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/goal/view/goal_page.dart';

import '../domain/goal_model.dart';
import '../goal.dart';

class GoalsListComponent extends StatefulWidget {
  final List<GoalModel> goalsList;

  const GoalsListComponent({super.key, required this.goalsList});

  @override
  State<GoalsListComponent> createState() => _GoalsListComponentState();
}

class _GoalsListComponentState extends State<GoalsListComponent>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        for (final goal in widget.goalsList)
          Card(
            child: ListTile(
              title: Hero(
                tag: 'goal_title_${goal.id}',
                flightShuttleBuilder: (_, __, ___, ____, _____) {
                  return Material(
                    child: Text(
                      'Goal #${goal.id}',
                    ),
                  );
                },
                child: Text('Goal #${goal.id}'),
              ),
              subtitle: Text('14 people'),
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
              ),
              onTap: () {
                context.goNamed(GoalPage.routeName, pathParameters: {
                  'id': goal.id,
                });
              },
            ),
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
