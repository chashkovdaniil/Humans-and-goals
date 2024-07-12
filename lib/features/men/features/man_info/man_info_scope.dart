import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../men.dart';
import 'man_info_view_model.dart';

class ManInfoScope extends StatelessWidget {
  final Widget child;

  const ManInfoScope({super.key, required this.child});

  static ManInfoViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      return context.watch<ManInfoViewModel>();
    }
    return context.read<ManInfoViewModel>();
  }

  @override
  Widget build(final BuildContext context) {
    final manInteractor = MenScope.manInteractorOf(context);
    return StateNotifierProvider(
      create: (final context) {
        return ManInfoViewModel(manInteractor);
      },
      child: child,
    );
  }
}
