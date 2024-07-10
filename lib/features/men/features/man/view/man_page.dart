import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/widgets.dart';
import '../../../../goal/goal.dart';
import '../../../men.dart';
import 'man_builder.dart';
import 'man_edit_page.dart';

class ManPage extends StatelessWidget {
  static const routeName = 'man';
  static const routePath = 'man/:id';

  const ManPage({super.key});

  @override
  Widget build(final context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    final manModel = GoRouterState.of(context).extra as ManModel?;

    if (manModel != null) {
      return _ManViewingPage(manModel: manModel);
    }

    if (id == null) {
      assert(false, 'Man id is null');
      return const ErrorPage(errorText: 'Man id is null');
    }

    return ManBuilder(
      id: id,
      onLoading: (final context) {
        return const LoadingPage();
      },
      onError: (final context, final error) {
        return ErrorPage(errorText: error.toString());
      },
      builder: (final _, final man) {
        return _ManViewingPage(manModel: man);
      },
    );
  }
}

class _ManViewingPage extends StatelessWidget {
  final ManModel manModel;

  const _ManViewingPage({required this.manModel});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(manModel.fullname),
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
            manModel.description.isEmpty
                ? 'Description is empty'
                : manModel.description,
          ),
          Text(
            'People',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Expanded(
            child: GoalsListComponent(
              goalsList: manModel.goals,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButton(
        heroTag: 'man_page',
        floatingButton: (final context, final isExpanded) => AnimatedRotation(
          turns: isExpanded ? -1 / 8 : 0,
          duration: const Duration(milliseconds: 200),
          child: const Icon(Icons.add),
        ),
        actions: [
          AnimatedDeleteButton(
            deleteCallback: () async {
              MenScope.menPageViewModelOf(
                context,
                listen: false,
              ).onRemoveManTap(manModel);
              context.pop();
            },
          ),
          ElevatedButton(
            child: const Text('Change info'),
            onPressed: () {
              context.goNamed(
                ManEditPage.routeName,
                pathParameters: {'id': manModel.id},
                extra: manModel,
              );
            },
          ),
          ElevatedButton(
            child: const Text('Add goal'),
            onPressed: () {},
          ),
        ],
        onPressed: () {},
      ),
    );
  }
}
