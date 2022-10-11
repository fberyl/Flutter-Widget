import 'package:flutter/material.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMES"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: const Text(
          "Hello World",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
