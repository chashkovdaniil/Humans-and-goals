import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/man/view/man_new_dialog.dart';
import 'package:goals_tracker/features/people/people.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('People'),
      ),
      body: PeopleListComponent(
        peopleList: List.generate(
          20,
          (id) => ManModel(
            id: id.toString(),
          ),
        ),
      ),
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
