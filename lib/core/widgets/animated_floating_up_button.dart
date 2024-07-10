import 'package:flutter/material.dart';

class AnimatedFloatingUpButton extends StatelessWidget {
  final bool isExpanded;
  final Widget child;

  const AnimatedFloatingUpButton({
    super.key,
    required this.isExpanded,
    required this.child,
  });

  @override
  Widget build(final BuildContext context) {
    return AnimatedSlide(
      offset: isExpanded ? const Offset(0, -0.5) : const Offset(0.25, 1),
      duration: const Duration(milliseconds: 200),
      child: AnimatedScale(
        scale: isExpanded ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: child,
      ),
    );
  }
}
