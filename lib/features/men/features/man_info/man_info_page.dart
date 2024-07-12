import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/widgets.dart';
import '../../../goal/goal.dart';
import '../../men.dart';
import '../man_edit/man_edit_page.dart';
import 'models/man_info_view_model_state.dart';

class ManInfoPage extends StatefulWidget {
  static const routeName = 'man';
  static const routePath = 'man/:id';

  final ManInfoViewModelState state;

  const ManInfoPage({super.key, required this.state});

  @override
  State<ManInfoPage> createState() => _ManInfoPageState();
}

class _ManInfoPageState extends State<ManInfoPage> {
  @override
  Widget build(final context) {
    return widget.state.map(
      loading: (final loading) {
        final man = loading.man;
        if (man != null) {
          return _ManViewingPage(manModel: man);
        }

        return const LoadingPage();
      },
      idle: (final _) => const LoadingPage(),
      error: (final error) {
        final man = error.man;
        if (man != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error ${error.error}'),
            ),
          );
          return _ManViewingPage(manModel: man);
        }

        return ErrorPage(
          errorText: error.error?.toString() ?? '',
        );
      },
      success: (final success) => _ManViewingPage(manModel: success.man),
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
              MenScope.viewModelOf(
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
