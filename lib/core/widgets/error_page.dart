import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String errorText;

  const ErrorPage({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ERROR'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(errorText),
      ),
    );
  }
}
