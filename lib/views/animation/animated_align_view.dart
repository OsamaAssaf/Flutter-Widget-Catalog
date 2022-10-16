import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignView extends StatefulWidget {
  const AnimatedAlignView({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignView> createState() => _AnimatedAlignViewState();
}

class _AnimatedAlignViewState extends State<AnimatedAlignView> {
  Alignment alignment = Alignment.center;

  List<Alignment> positions = [
    Alignment.center,
    Alignment.topCenter,
    Alignment.bottomCenter,
    Alignment.topLeft,
    Alignment.centerLeft,
    Alignment.bottomLeft,
    Alignment.topRight,
    Alignment.centerRight,
    Alignment.bottomRight,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            int r = Random().nextInt(positions.length);
            setState(() {
              alignment = positions[r];
            });
          },
          child: Container(
            margin: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: 300.0,
            color: Colors.red,

            /// Animated version of Align which automatically transitions the child's position over a given duration whenever the given alignment changes.
            child: AnimatedAlign(
              alignment: alignment,
              duration: const Duration(milliseconds: 500),
              child: const FlutterLogo(
                size: 100.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
