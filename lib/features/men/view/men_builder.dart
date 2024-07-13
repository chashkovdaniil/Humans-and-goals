import 'package:flutter/material.dart';

import '../men.dart';

class MenBuilder extends StatelessWidget {
  final Widget Function(BuildContext, List<Man>) builder;

  const MenBuilder({super.key, required this.builder});

  @override
  Widget build(final BuildContext context) {
    final menPageViewModel = MenScope.viewModelOf(context);

    return StreamBuilder<List<Man>>(
      initialData: menPageViewModel.men,
      stream: menPageViewModel.stream.map((final s) => s.men),
      builder: (final context, final snapshot) {
        return builder(context, snapshot.requireData);
      },
    );
  }
}
