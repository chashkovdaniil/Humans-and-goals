import 'package:flutter/material.dart';

import '../../../men.dart';

class ManBuilder extends StatelessWidget {
  final String id;
  final Widget Function(BuildContext, ManModel) builder;
  final WidgetBuilder? onLoading;
  final Widget Function(BuildContext, Object? error)? onError;

  const ManBuilder({
    super.key,
    required this.id,
    required this.builder,
    this.onLoading,
    this.onError,
  });

  @override
  Widget build(final BuildContext context) {
    final manInteractor = MenScope.manInteractorOf(context);
    final onLoading = this.onLoading?.call(context) ?? const SizedBox.shrink();

    return FutureBuilder(
      future: manInteractor.getMan(id),
      builder: (final context, final snapshot) {
        if (snapshot.hasError) {
          return onError?.call(context, snapshot.error) ?? onLoading;
        }
        if (!snapshot.hasData) {
          return onLoading;
        }
        return builder(context, snapshot.requireData);
      },
    );
  }
}
