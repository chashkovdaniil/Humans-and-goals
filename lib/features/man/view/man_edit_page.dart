import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManEditPage extends StatefulWidget {
  static const routeName = 'man_edit';
  static const routePath = 'edit';

  const ManEditPage({super.key});

  @override
  State<ManEditPage> createState() => _ManEditPageState();
}

class _ManEditPageState extends State<ManEditPage> {
  late final TextEditingController _descriptionEditingController;

  @override
  void initState() {
    _descriptionEditingController = TextEditingController(text: 'Maann');
    super.initState();
  }

  @override
  void dispose() {
    _descriptionEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Editing - Man #$id'),
      ),
      body: Column(
        children: [
          Expanded(
            child: TextField(
              controller: _descriptionEditingController,
              maxLength: 500,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }
}
