import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/widgets.dart';
import '../../goal/goal.dart';
import 'man_edit_page.dart';

class ManPage extends StatelessWidget {
  static const routeName = 'man';
  static const routePath = 'man/:id';

  const ManPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Hero(
          tag: 'man_page_$id',
          child: Text('Man #$id'),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Information',
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
          Expanded(
            child: GoalsListComponent(
              goalsList: List.generate(
                20,
                (id) => GoalModel(
                  id: id.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(
        floatingButton: (context, isExpanded) => AnimatedRotation(
          turns: isExpanded ? -1 / 8 : 0,
          duration: const Duration(milliseconds: 200),
          child: const Icon(Icons.add),
        ),
        actions: [
          AnimatedDeleteButton(
            deleteCallback: () async {},
          ),
          ElevatedButton(
            child: Text('Change info'),
            onPressed: () {
              context.goNamed(ManEditPage.routeName, pathParameters: {
                'id': id!,
              });
            },
          ),
          ElevatedButton(
            child: Text('Add goal'),
            onPressed: () {},
          ),
        ],
        onPressed: () {},
      ),
    );
  }
}
