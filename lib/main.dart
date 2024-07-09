import 'package:flutter/material.dart';
import 'package:goals_tracker/core/router.dart';
import 'package:goals_tracker/features/main/view/main_view_model.dart';

import 'core/di_container.dart';
import 'features/main/view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TabsProvider(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}