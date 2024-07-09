import 'package:flutter/material.dart';

import 'widgets.dart';

class FloatingButton extends StatefulWidget {
  final List<Widget> actions;
  final Widget Function(BuildContext context, bool isExpanded) floatingButton;
  final VoidCallback onPressed;

  const FloatingButton({
    super.key,
    required this.actions,
    required this.floatingButton,
    required this.onPressed,
  });

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  var isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        for (final action in widget.actions)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: AnimatedFloatingUpButton(
              isExpanded: isExpanded,
              child: action,
            ),
          ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
            widget.onPressed();
          },
          child: widget.floatingButton(context, isExpanded),
        ),
      ],
    );
  }
}
