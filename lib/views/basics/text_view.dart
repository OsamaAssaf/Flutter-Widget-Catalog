// Flutter imports:
import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.purple,
            letterSpacing: 8.0,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(-5.0, 5.0),
                blurRadius: 3.0,
              ),
            ]
          ),
        ),
      ),
    );
  }
}
