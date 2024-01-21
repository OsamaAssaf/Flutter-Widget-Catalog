import 'package:flutter/material.dart';

class AnimatedSizeView extends StatefulWidget {
  const AnimatedSizeView({super.key});

  @override
  State<AnimatedSizeView> createState() => _AnimatedSizeViewState();
}

class _AnimatedSizeViewState extends State<AnimatedSizeView> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.
          AnimatedSize(
            duration: const Duration(seconds: 1),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isLarge = !_isLarge;
                });
              },
              child: Container(
                color: Colors.red,
                width: 120.0,
                height: 120.0,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    FlutterLogo(
                      size: _isLarge ? 250.0 : 50.0,
                    ),
                    const Text('Tap Me!'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
