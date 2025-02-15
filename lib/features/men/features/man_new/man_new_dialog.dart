import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'man_new_scope.dart';
import 'man_new_view_model.dart';

class ManNewDialog extends StatelessWidget {
  static const routeName = 'people_new';
  static const routePath = 'people/new';

  const ManNewDialog({super.key});

  @override
  Widget build(final context) {
    return const ManNewScope(
      child: ManNewDialogView(),
    );
  }
}

class ManNewDialogView extends StatefulWidget {
  const ManNewDialogView({super.key});

  @override
  State<ManNewDialogView> createState() => _ManNewDialogViewState();
}

class _ManNewDialogViewState extends State<ManNewDialogView> {
  late final TextEditingController _fullnameEditingController;
  late final GlobalKey<FormState> _formKey;
  ManNewViewModel? _viewModel;

  @override
  void initState() {
    _fullnameEditingController = TextEditingController();
    _formKey = GlobalKey<FormState>(debugLabel: 'man_new_key');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _viewModel?.dispose();
    _viewModel = context.watch<ManNewViewModel>();
    super.didChangeDependencies();
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
            _viewModel?.onChangeFullname(fullname);
          },
          validator: (final text) {
            if (text?.isEmpty ?? false) {
              return 'Fill field';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Fullname',
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
                      _viewModel?.onNewManTap(context);
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
