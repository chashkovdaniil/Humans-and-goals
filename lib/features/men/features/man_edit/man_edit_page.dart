import 'package:flutter/material.dart';

import '../../../../core/widgets/widgets.dart';
import '../../men.dart';
import '../man_info/models/man_info_view_model_state.dart';
import 'man_edit_scope.dart';
import 'man_edit_view_model.dart';

class ManEditPage extends StatelessWidget {
  static const routeName = 'man_edit';
  static const routePath = 'edit';

  final ManInfoViewModelState state;

  const ManEditPage({required this.state, super.key});

  @override
  Widget build(final context) {
    return state.map(
      loading: (final loading) {
        final man = loading.man;
        if (man != null) {
          return _ManEditingView(manModel: man);
        }

        return const LoadingPage();
      },
      idle: (final _) => const LoadingPage(),
      error: (final error) {
        final man = error.man;
        if (man != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error ${error.error}'),
            ),
          );
          return _ManEditingView(manModel: man);
        }

        return ErrorPage(
          errorText: error.error?.toString() ?? '',
        );
      },
      success: (final value) {
        return _ManEditingView(manModel: value.man);
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
  ManEditViewModel? _viewModel;

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
  void didChangeDependencies() {
    _viewModel?.dispose();
    _viewModel = ManEditScope.viewModelOf(context);
    _viewModel?.attachModel(widget.manModel);
    super.didChangeDependencies();
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
            onChanged: (final fullname) {
              _viewModel?.onFullnameChanged(fullname);
            },
          ),
          Expanded(
            child: TextField(
              controller: _descriptionEditingController,
              maxLength: 500,
              maxLines: null,
              onChanged: (final description) {
                _viewModel?.onDescriptionChanged(description);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.save),
        label: const Text('Save'),
        onPressed: () {
          _viewModel?.onSaveTap(context);
        },
      ),
    );
  }
}
