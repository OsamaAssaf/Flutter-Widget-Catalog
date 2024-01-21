import 'package:flutter/material.dart';

class ConstrainedBoxView extends StatelessWidget {
  const ConstrainedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 400.0,
            maxWidth: 300.0,
          ),
          child: Container(
            height: 800.0, // Has no effect because maxHeight is 400.0
            width: 600.0, // Has no effect because maxWidth is 300.0
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
