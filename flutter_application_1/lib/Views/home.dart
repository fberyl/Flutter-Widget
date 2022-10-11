import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMES"),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: const Text(
          "Hello World",
        ),
      ),
    );
  }
}
