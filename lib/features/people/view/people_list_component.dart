import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/man/view/man_page.dart';

import '../domain/man_model.dart';

class PeopleListComponent extends StatelessWidget {
  final List<ManModel> peopleList;

  const PeopleListComponent({super.key, required this.peopleList});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        for (final man in peopleList)
          Card(
            child: ListTile(
              title: Hero(
                tag: 'man_${man.id}',
                flightShuttleBuilder: (_, __, ___, ____, _____) {
                  return Material(
                    child: Text(
                      'Man #${man.id}',
                    ),
                  );
                },
                child: Text('man #${man.id}'),
              ),
              subtitle: Text('Electric'),
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
              ),
              onTap: () {
                context.goNamed(ManPage.routeName, pathParameters: {
                  'id': man.id,
                });
              },
            ),
          ),
      ],
    );
  }
}
