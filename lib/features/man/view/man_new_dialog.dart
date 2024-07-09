import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: TextFormField(
          controller: _fullnameEditingController,
          decoration: InputDecoration(
            hintText: 'Fullname',
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0*2,8.0*2,8.0*2,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    context.pop();
                  },
                ),
                TextButton(
                  child: Text('Save'),
                  onPressed: () {
                    final isValid = _formKey.currentState?.validate() ?? false;

                    if(isValid) {
                      print('Save');
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
