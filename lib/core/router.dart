import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:goals_tracker/features/goal/view/goal_edit_page.dart';
import 'package:goals_tracker/features/goal/view/goal_new_dialog.dart';
import 'package:goals_tracker/features/goal/view/goal_page.dart';
import 'package:goals_tracker/features/main/view/main_page.dart';

import '../features/man/view/man_edit_page.dart';
import '../features/man/view/man_new_dialog.dart';
import '../features/man/view/man_page.dart';
import 'widgets/dialog_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (_, __) => const MainPage(),
      routes: [
        GoRoute(
          path: GoalPage.routePath,
          name: GoalPage.routeName,
          builder: (_, __) => const GoalPage(),
          routes: [
            GoRoute(
              path: GoalEditPage.routePath,
              name: GoalEditPage.routeName,
              builder: (_, __) => const GoalEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: GoalNewDialog.routePath,
          name: GoalNewDialog.routeName,
          pageBuilder: (context, state) {
            return DialogPage(
              builder: (_) => const GoalNewDialog(),
            );
          },
        ),
        GoRoute(
          path: ManPage.routePath,
          name: ManPage.routeName,
          builder: (_, __) => const ManPage(),
          routes: [
            GoRoute(
              path: ManEditPage.routePath,
              name: ManEditPage.routeName,
              builder: (_, __) => const ManEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: ManNewDialog.routePath,
          name: ManNewDialog.routeName,
          pageBuilder: (context, state) {
            return DialogPage(
              builder: (_) => const ManNewDialog(),
            );
          },
        ),
      ],
    ),
  ],
);
