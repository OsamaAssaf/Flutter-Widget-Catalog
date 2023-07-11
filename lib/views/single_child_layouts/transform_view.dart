// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

class TransformView extends StatelessWidget {
  const TransformView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            /// You can do a lot of things here, you can search about it.
            transform: Matrix4.skewX(0.3)..rotateZ(pi / 12),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Hello, World!'),
            ),
          ),
        ),
      ),
    );
  }
}
