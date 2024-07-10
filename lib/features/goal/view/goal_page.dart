import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/widgets.dart';
import '../../men/men.dart';
import 'goal_edit_page.dart';

class GoalPage extends StatelessWidget {
  static const routePath = 'goal/:id';
  static const routeName = 'goal';

  const GoalPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    final canPop = context.canPop();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: !canPop
            ? null
            : IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {
                  final canPop = context.canPop();
                  if (canPop) {
                    context.pop();
                  } else {
                    context.go('/');
                  }
                },
              ),
        title: Hero(
          tag: 'goal_title_$id',
          flightShuttleBuilder:
              (final _, final __, final ___, final ____, final _____) {
            return Material(
              child: Text(
                'Goal #$id',
              ),
            );
          },
          child: Text(
            'Goal #$id',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Description',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
                'It is description. The goal #$id is so popular. Below are people who can help you reach your goals'),
            Text(
              'People',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Expanded(
              child: MenListComponent(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(
        heroTag: 'goal_page',
        floatingButton: (final context, final isExpanded) => AnimatedRotation(
          turns: isExpanded ? -1 / 8 : 0,
          duration: const Duration(milliseconds: 200),
          child: const Icon(Icons.add),
        ),
        actions: [
          AnimatedDeleteButton(
            deleteCallback: () async {},
          ),
          ElevatedButton(
            child: const Text('Change description'),
            onPressed: () {
              context.goNamed(GoalEditPage.routeName, pathParameters: {
                'id': id!,
              });
            },
          ),
          ElevatedButton(
            child: const Text('Add man'),
            onPressed: () {},
          ),
        ],
        onPressed: () {},
      ),
    );
  }
}
