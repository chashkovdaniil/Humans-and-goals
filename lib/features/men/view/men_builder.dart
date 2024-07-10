import 'package:flutter/material.dart';

import '../domain/models/man_model.dart';
import 'men_scope.dart';

class MenBuilder extends StatelessWidget {
  final Widget Function(BuildContext, List<ManModel>) builder;

  const MenBuilder({super.key, required this.builder});

  @override
  Widget build(final BuildContext context) {
    final menPageViewModel = MenScope.menPageViewModelOf(context);

    return StreamBuilder<List<ManModel>>(
      initialData: menPageViewModel.men,
      stream: menPageViewModel.stream.map((final s) => s.men),
      builder: (final context, final snapshot) {
        return builder(context, snapshot.requireData);
      },
    );
  }
}
