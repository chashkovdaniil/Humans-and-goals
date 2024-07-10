import 'package:flutter/material.dart';

class AnimatedDeleteButton extends StatefulWidget {
  final Future<void> Function() deleteCallback;

  const AnimatedDeleteButton({super.key, required this.deleteCallback});

  @override
  State<AnimatedDeleteButton> createState() => _AnimatedDeleteButtonState();
}

class _AnimatedDeleteButtonState extends State<AnimatedDeleteButton> {
  var isLoading = false;

  @override
  Widget build(final BuildContext context) {
    return ElevatedButton(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: isLoading
            ? const SizedBox.square(
                dimension: 8.0,
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Text(
                'Delete',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.red),
              ),
      ),
      onPressed: () async {
        setState(() {
          isLoading = true;
        });
        await widget.deleteCallback();
        setState(() {
          isLoading = false;
        });
      },
    );
  }
}
