import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../men.dart';

class ManNewDialog extends StatefulWidget {
  static const routeName = 'people_new';
  static const routePath = 'people/new';

  const ManNewDialog({super.key});

  @override
  State<ManNewDialog> createState() => _ManNewDialogState();
}

class _ManNewDialogState extends State<ManNewDialog> {
  late final TextEditingController _fullnameEditingController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _fullnameEditingController = TextEditingController();
    _formKey = GlobalKey<FormState>(debugLabel: 'man_new_key');
    super.initState();
  }

  @override
  void dispose() {
    _fullnameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: TextFormField(
          controller: _fullnameEditingController,
          onChanged: (final fullname) {
            final manNewDialogViewModel = MenScope.manNewDialogViewModelOf(
              context,
              listen: false,
            );
            manNewDialogViewModel.onChangeFullname(fullname);
          },
          validator: (final text) {
            if (text?.isEmpty ?? true) {
              return 'Fill field';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Fullname',
            errorText: 'Fill field',
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0 * 2, 8.0 * 2, 8.0 * 2, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () => context.pop(),
                ),
                TextButton(
                  child: const Text('Save'),
                  onPressed: () {
                    final isValid = _formKey.currentState?.validate() ?? false;

                    if (isValid) {
                      MenScope.manNewDialogViewModelOf(context).onNewManTap();
                      context.pop();
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
