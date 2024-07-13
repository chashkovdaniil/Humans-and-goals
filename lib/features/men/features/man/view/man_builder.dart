import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import '../../../men.dart';
import '../../man_info/man_info_scope.dart';
import '../../man_info/man_info_view_model.dart';
import '../../man_info/models/man_info_view_model_state.dart';

class ManBuilder extends StatefulWidget {
  final String id;
  final Man? initialModel;
  final Widget? child;
  final Widget Function(BuildContext, ManInfoViewModelState, Widget? child)
      builder;

  const ManBuilder({
    super.key,
    required this.id,
    required this.builder,
    this.initialModel,
    this.child,
  });

  @override
  State<ManBuilder> createState() => _ManBuilderState();
}

class _ManBuilderState extends State<ManBuilder> {
  ManInfoViewModel? _viewModel;

  @override
  void initState() {
    super.initState();
    final initialModel = widget.initialModel;
    if (initialModel != null) {
      ManInfoScope.viewModelOf(context, listen: false).attach(initialModel);
    }
  }

  @override
  void didUpdateWidget(covariant final ManBuilder oldWidget) {
    _viewModel?.load(oldWidget.id);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    _viewModel?.dispose();
    _viewModel = ManInfoScope.viewModelOf(context);
    _viewModel?.load(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(final BuildContext context) {
    final viewModel = _viewModel;
    return StateNotifierBuilder(
      stateNotifier: viewModel!,
      builder: (final context, final state, final child) {
        return widget.builder(context, state, child);
      },
      child: widget.child,
    );
  }
}
