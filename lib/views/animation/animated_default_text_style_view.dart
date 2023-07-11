// Flutter imports:
import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleView extends StatefulWidget {
  const AnimatedDefaultTextStyleView({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleView> createState() => _AnimatedDefaultTextStyleViewState();
}

class _AnimatedDefaultTextStyleViewState extends State<AnimatedDefaultTextStyleView> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              style: _isSelected
                  ? const TextStyle(color: Colors.blue, fontSize: 40.0, fontWeight: FontWeight.normal)
                  : const TextStyle(color: Colors.red, fontSize: 64.0, fontWeight: FontWeight.bold),
              duration: const Duration(seconds: 1),
              child: const Text('Flutter'),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  setState(() {
                    _isSelected = !_isSelected;
                  });
                });
              },
              child: const Text('Try it!'),
            ),
          ],
        ),
      ),
    );
  }
}
