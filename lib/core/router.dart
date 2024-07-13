import 'package:go_router/go_router.dart';

import '../features/goal/view/goal_edit_page.dart';
import '../features/goal/view/goal_new_dialog.dart';
import '../features/goal/view/goal_page.dart';
import '../features/main/view/main_page.dart';
import '../features/men/features/man/view/man_builder.dart';
import '../features/men/features/man_edit/man_edit_page.dart';
import '../features/men/features/man_edit/man_edit_scope.dart';
import '../features/men/features/man_info/man_info_page.dart';
import '../features/men/features/man_info/man_info_scope.dart';
import '../features/men/features/man_new/man_new_dialog.dart';
import '../features/men/men.dart';
import 'widgets/dialog_page.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
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
          path: ManInfoPage.routePath,
          name: ManInfoPage.routeName,
          builder: (final context, final state) {
            final id = state.pathParameters['id'];
            final manModel = state.extra as Man?;
            return ManInfoScope(
              child: ManBuilder(
                id: id!,
                initialModel: manModel,
                builder: (final context, final state, final child) {
                  return ManInfoPage(state: state);
                },
              ),
            );
          },
          routes: [
            GoRoute(
              path: ManEditPage.routePath,
              name: ManEditPage.routeName,
              builder: (final context, final state) {
                final id = state.pathParameters['id'];
                final manModel = state.extra as Man?;

                return ManInfoScope(
                  child: ManBuilder(
                    id: id!,
                    initialModel: manModel,
                    builder: (final context, final state, final child) {
                      return ManEditScope(
                        child: ManEditPage(
                          state: state,
                        ),
                      );
                    },
                  ),
                );
              },
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
