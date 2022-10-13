import 'package:flutter/material.dart';

class ConstrainedBoxView extends StatelessWidget {
  const ConstrainedBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Center widget will align child widget in center.
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const Card(child: Text('Hello World!')),
      ),
    );
  }
}
