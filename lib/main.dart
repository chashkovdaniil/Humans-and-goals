import 'package:flutter/material.dart';
import 'package:goals_tracker/core/router.dart';
import 'package:goals_tracker/features/main/view/main_view_model.dart';

import 'features/men/view/men_scope.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TabsProvider(
      child: MenScope(
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
