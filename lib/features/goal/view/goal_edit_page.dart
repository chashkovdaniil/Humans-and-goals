import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoalEditPage extends StatefulWidget {
  static const routeName = 'goal_edit';
  static const routePath = 'edit';

  const GoalEditPage({super.key});

  @override
  State<GoalEditPage> createState() => _GoalEditPageState();
}

class _GoalEditPageState extends State<GoalEditPage> {
  late final TextEditingController _descriptionEditingController;

  @override
  void initState() {
    _descriptionEditingController = TextEditingController(text: 'asfasfasf');
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
        title: Text('Editing - Goal #$id'),
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
