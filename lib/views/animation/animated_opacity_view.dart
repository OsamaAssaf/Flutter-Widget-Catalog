import 'package:flutter/material.dart';

class AnimatedOpacityView extends StatefulWidget {
  const AnimatedOpacityView({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityView> createState() => _AnimatedOpacityViewState();
}

class _AnimatedOpacityViewState extends State<AnimatedOpacityView> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100.0,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 1.0 ? 0 : 1.0;
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
