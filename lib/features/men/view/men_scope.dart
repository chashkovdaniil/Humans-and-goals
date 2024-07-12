import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../domain/data/man_repository.dart';
import '../domain/interactor/man_interactor.dart';
import 'men_view_model.dart';

class MenScope extends StatelessWidget {
  final Widget child;

  const MenScope({super.key, required this.child});

  static MenViewModel viewModelOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      return context.watch<MenViewModel>();
    }

    return context.read<MenViewModel>();
  }

  static ManInteractor manInteractorOf(
    final BuildContext context, {
    final bool listen = true,
  }) {
    if (listen) {
      return context.watch<ManInteractor>();
    }

    return context.read<ManInteractor>();
  }

  @override
  Widget build(final BuildContext context) {
    final manRepository = ManRepository();
    final manInteractor = ManInteractor(manRepository: manRepository);
    final menPageViewModel = MenViewModel(manInteractor);
    menPageViewModel.init();

    return NotificationListener<UpdateMenNotification>(
      onNotification: (final notification) {
        menPageViewModel.onUpdateListByNotification();
        return true;
      },
      child: MultiProvider(
        providers: [
          Provider(
            create: (final _) => manInteractor,
          ),
          StateNotifierProvider(
            create: (final context) => menPageViewModel,
          ),
        ],
        child: child,
      ),
    );
  }
}

class UpdateMenNotification extends Notification {}
