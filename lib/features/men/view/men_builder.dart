import 'package:flutter/material.dart';
import 'package:goals_tracker/features/men/domain/models/man_model.dart';
import 'package:goals_tracker/features/men/view/men_scope.dart';

class MenBuilder extends StatelessWidget {
  final Widget Function(BuildContext, List<ManModel>) builder;

  const MenBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final menPageViewModel = MenScope.menPageViewModelOf(context);

    return StreamBuilder<List<ManModel>>(
      initialData: menPageViewModel.men,
      stream: menPageViewModel.stream.map((s) => s.men),
      builder: (context, snapshot) {
        return builder(context, snapshot.requireData);
      },
    );
  }
}
