import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoalNewDialog extends StatefulWidget {
  static const routeName = 'goals_new';
  static const routePath = 'goals/new';

  const GoalNewDialog({super.key});

  @override
  State<GoalNewDialog> createState() => _GoalNewDialogState();
}

class _GoalNewDialogState extends State<GoalNewDialog> {
  late final TextEditingController _goalTitleEditingController;
  late final TextEditingController _goalDescriptionEditingController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _goalTitleEditingController = TextEditingController();
    _goalDescriptionEditingController = TextEditingController();
    _formKey = GlobalKey<FormState>(debugLabel: 'goal_new_key');
    super.initState();
  }

  @override
  void dispose() {
    _goalTitleEditingController.dispose();
    _goalDescriptionEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: TextFormField(
          controller: _goalTitleEditingController,
          decoration: const InputDecoration(
            hintText: 'Goal\'s name',
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0 * 2),
            child: TextFormField(
              controller: _goalDescriptionEditingController,
              decoration: const InputDecoration(
                hintText: 'Goal\'s name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0 * 2, 8.0 * 2, 8.0 * 2, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    context.pop();
                  },
                ),
                TextButton(
                  child: const Text('Save'),
                  onPressed: () {
                    final isValid = _formKey.currentState?.validate() ?? false;

                    if (isValid) {
                      // print('Save');
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
