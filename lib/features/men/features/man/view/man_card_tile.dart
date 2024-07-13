import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../men.dart';
import '../../man_info/man_info_page.dart';

class ManCardTile extends StatelessWidget {
  final ManModel man;

  const ManCardTile({super.key, required this.man});

  @override
  Widget build(final BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(man.fullname),
        subtitle: const Text('Electric'),
        trailing: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            MenScope.viewModelOf(
              context,
              listen: false,
            ).onRemoveManTap(man);
          },
        ),
        onTap: () {
          context.goNamed(
            ManInfoPage.routeName,
            pathParameters: {'id': man.id},
            extra: man,
          );
        },
      ),
    );
  }
}
