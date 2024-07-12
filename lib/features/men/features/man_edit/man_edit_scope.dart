import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../men.dart';
import 'man_edit_view_model.dart';

class ManEditScope extends StatelessWidget {
  final Widget child;

  const ManEditScope({super.key, required this.child});

  static ManEditViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      return context.watch<ManEditViewModel>();
    }
    return context.read<ManEditViewModel>();
  }

  @override
  Widget build(final BuildContext context) {
    final manInteractor = MenScope.manInteractorOf(context);

    return StateNotifierProvider(
      create: (final context) => ManEditViewModel(manInteractor),
      child: child,
    );
  }
}
