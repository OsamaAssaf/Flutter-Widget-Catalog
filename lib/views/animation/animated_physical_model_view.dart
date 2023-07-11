// Flutter imports:
import 'package:flutter/material.dart';

class AnimatedPhysicalModelView extends StatefulWidget {
  const AnimatedPhysicalModelView({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelView> createState() => _AnimatedPhysicalModelViewState();
}

class _AnimatedPhysicalModelViewState extends State<AnimatedPhysicalModelView> {
  bool _isSelection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// The borderRadius and elevation and more are animated.
            AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              borderRadius: _isSelection ? BorderRadius.circular(48.0) : BorderRadius.circular(24.0),
              elevation: _isSelection ? 0.0 : 24.0,
              color: Colors.red,
              shadowColor: Colors.black,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 200.0,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isSelection = !_isSelection;
                });
              },
              child: const Text('Change opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
