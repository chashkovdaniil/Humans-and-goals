import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../men.dart';
import 'man_new_view_model.dart';

class ManNewScope extends StatefulWidget {
  final Widget child;

  const ManNewScope({super.key, required this.child});

  static ManNewViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      return context.watch<ManNewViewModel>();
    }
    return context.read<ManNewViewModel>();
  }

  @override
  State<ManNewScope> createState() => _ManNewScopeState();
}

class _ManNewScopeState extends State<ManNewScope> {
  late ManInteractor manInteractor;

  @override
  void didChangeDependencies() {
    manInteractor = MenScope.manInteractorOf(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(final BuildContext context) {
    return StateNotifierProvider(
      create: (final context) => ManNewViewModel(manInteractor),
      child: widget.child,
    );
  }
}
