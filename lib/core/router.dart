import 'package:go_router/go_router.dart';

import '../features/goal/view/goal_edit_page.dart';
import '../features/goal/view/goal_new_dialog.dart';
import '../features/goal/view/goal_page.dart';
import '../features/main/view/main_page.dart';
import '../features/men/features/edit_man/man_edit_page.dart';
import '../features/men/features/man/view/man_page.dart';
import '../features/men/features/new_man/man_new_dialog.dart';
import 'widgets/dialog_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (final _, final __) => const MainPage(),
      routes: [
        GoRoute(
          path: GoalPage.routePath,
          name: GoalPage.routeName,
          builder: (final _, final __) => const GoalPage(),
          routes: [
            GoRoute(
              path: GoalEditPage.routePath,
              name: GoalEditPage.routeName,
              builder: (final _, final __) => const GoalEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: GoalNewDialog.routePath,
          name: GoalNewDialog.routeName,
          pageBuilder: (final context, final state) {
            return DialogPage(
              builder: (final _) => const GoalNewDialog(),
            );
          },
        ),
        GoRoute(
          path: ManPage.routePath,
          name: ManPage.routeName,
          builder: (final _, final __) => const ManPage(),
          routes: [
            GoRoute(
              path: ManEditPage.routePath,
              name: ManEditPage.routeName,
              builder: (final _, final __) => const ManEditPage(),
            ),
          ],
        ),
        GoRoute(
          path: ManNewDialog.routePath,
          name: ManNewDialog.routeName,
          pageBuilder: (final context, final state) {
            return DialogPage(
              builder: (final _) => const ManNewDialog(),
            );
          },
        ),
      ],
    ),
  ],
);
