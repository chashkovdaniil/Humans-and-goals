import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/man/view/man_new_dialog.dart';

import '../men.dart';

class MenPage extends StatelessWidget {
  const MenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('People'),
      ),
      body: const MenListComponent(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Add man'),
        icon: Icon(Icons.add),
        onPressed: () {
          context.goNamed(ManNewDialog.routeName);
        },
      ),
    );
  }
}
