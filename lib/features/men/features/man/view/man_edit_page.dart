import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/widgets.dart';
import '../../../domain/models/man_model.dart';
import 'man_builder.dart';

class ManEditPage extends StatelessWidget {
  static const routeName = 'man_edit';
  static const routePath = 'edit';

  const ManEditPage({super.key});

  @override
  Widget build(final context) {
    final id = GoRouterState.of(context).pathParameters['id'];
    final manModel = GoRouterState.of(context).extra as ManModel?;

    if (manModel != null) {
      return _ManEditingView(manModel: manModel);
    }

    if (id == null) {
      assert(false, 'Man id is null');
      return const ErrorPage(errorText: 'Man id is null');
    }

    return ManBuilder(
      id: id,
      builder: (final _, final man) {
        return _ManEditingView(manModel: man);
      },
    );
  }
}

class _ManEditingView extends StatefulWidget {
  final ManModel manModel;

  const _ManEditingView({required this.manModel});

  @override
  State<_ManEditingView> createState() => _ManEditingViewState();
}

class _ManEditingViewState extends State<_ManEditingView> {
  late final TextEditingController _fullnameEditingController;
  late final TextEditingController _descriptionEditingController;

  @override
  void initState() {
    _fullnameEditingController = TextEditingController(
      text: widget.manModel.fullname,
    );
    _descriptionEditingController = TextEditingController(
      text: widget.manModel.description,
    );
    super.initState();
  }

  @override
  void dispose() {
    _fullnameEditingController.dispose();
    _descriptionEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(final context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Editing - ${widget.manModel.fullname}',
          maxLines: 3,
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _fullnameEditingController,
          ),
          Expanded(
            child: TextField(
              controller: _descriptionEditingController,
              maxLength: 500,
              maxLines: null,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.save),
        label: const Text('Save'),
        onPressed: () {},
      ),
    );
  }
}
