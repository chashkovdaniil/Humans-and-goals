import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String errorText;

  const ErrorPage({super.key, required this.errorText});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERROR'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(errorText),
      ),
    );
  }
}
