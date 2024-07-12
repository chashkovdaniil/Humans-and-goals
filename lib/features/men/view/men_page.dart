import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/man_new/man_new_dialog.dart';
import '../men.dart';

class MenPage extends StatelessWidget {
  const MenPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('People'),
      ),
      body: const MenListComponent(),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'men_page',
        label: const Text('Add man'),
        icon: const Icon(Icons.add),
        onPressed: () {
          context.goNamed(ManNewDialog.routeName);
        },
      ),
    );
  }
}
