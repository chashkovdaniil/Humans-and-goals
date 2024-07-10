import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../domain/goal_model.dart';
import '../goal.dart';
import 'goal_page.dart';

class GoalsListComponent extends StatefulWidget {
  final List<GoalModel> goalsList;

  const GoalsListComponent({super.key, required this.goalsList});

  @override
  State<GoalsListComponent> createState() => _GoalsListComponentState();
}

class _GoalsListComponentState extends State<GoalsListComponent>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(final BuildContext context) {
    super.build(context);

    if (widget.goalsList.isEmpty) {
      return Center(
        child: Text('Empty'),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        for (final goal in widget.goalsList)
          Card(
            child: ListTile(
              title: Hero(
                tag: 'goal_title_${goal.id}',
                flightShuttleBuilder: (
                  final _,
                  final __,
                  final ___,
                  final ____,
                  final _____,
                ) {
                  return Material(
                    child: Text(
                      'Goal #${goal.id}',
                    ),
                  );
                },
                child: Text('Goal #${goal.id}'),
              ),
              subtitle: const Text('14 people'),
              trailing: IconButton(
                icon: const Icon(Icons.close),
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
