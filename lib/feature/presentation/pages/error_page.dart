import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrong Route!')),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text('The route is unknown'),
        ),
      ),
    );
  }
}
