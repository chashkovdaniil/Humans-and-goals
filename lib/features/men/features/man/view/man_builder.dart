import 'package:flutter/material.dart';

import '../../../men.dart';
import 'man_updated_notification.dart';

class ManBuilder extends StatefulWidget {
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
  State<ManBuilder> createState() => _ManBuilderState();
}

class _ManBuilderState extends State<ManBuilder> {
  @override
  Widget build(final BuildContext context) {
    return Builder(builder: (final context) {
      final manInteractor = MenScope.manInteractorOf(context);
      final onLoading =
          widget.onLoading?.call(context) ?? const SizedBox.shrink();

      return FutureBuilder(
        future: manInteractor.getMan(widget.id),
        builder: (final context, final snapshot) {
          if (snapshot.hasError) {
            return widget.onError?.call(context, snapshot.error) ?? onLoading;
          }
          if (!snapshot.hasData) {
            return onLoading;
          }
          final man = snapshot.requireData;
          return NotificationListener<ManUpdatedNotification>(
            onNotification: (final notification) {
              if (notification.id == man.id) {
                setState(() {});
                return true;
              }
              return false;
            },
            child: widget.builder(context, man),
          );
        },
      );
    });
  }
}
