import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../man/view/man_page.dart';
import '../domain/models/man_model.dart';
import 'men_scope.dart';

class ManCardTile extends StatelessWidget {
  final ManModel man;

  const ManCardTile({super.key, required this.man});

  @override
  Widget build(BuildContext context) {
    return Card(
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
          onPressed: () {
            MenScope.menPageViewModelOf(
              context,
              listen: false,
            ).onRemoveManTap(man);
          },
        ),
        onTap: () {
          context.goNamed(ManPage.routeName, pathParameters: {
            'id': man.id,
          });
        },
      ),
    );
  }
}
