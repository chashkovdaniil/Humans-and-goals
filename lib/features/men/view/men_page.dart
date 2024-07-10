import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/new_man/man_new_dialog.dart';
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
        heroTag: 'men_page',
        label: Text('Add man'),
        icon: Icon(Icons.add),
        onPressed: () {
          context.goNamed(ManNewDialog.routeName);
        },
      ),
    );
  }
}
