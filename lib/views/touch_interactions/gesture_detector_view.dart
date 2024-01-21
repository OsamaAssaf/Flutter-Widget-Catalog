import 'package:flutter/material.dart';

class GestureDetectorView extends StatefulWidget {
  const GestureDetectorView({super.key});

  @override
  State<GestureDetectorView> createState() => _GestureDetectorViewState();
}

class _GestureDetectorViewState extends State<GestureDetectorView> {
  bool isLightOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline_rounded,
              color: isLightOn ? Colors.yellow : Colors.black,
              size: 128.0,
            ),
            const SizedBox(
              height: 16.0,
            ),

            /// A widget that detects gestures.
            GestureDetector(
              onTap: () {
                setState(() {
                  isLightOn = !isLightOn;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.yellow,
                child: Text(
                  'Turn Light ${isLightOn ? 'OFF' : 'ON'}',
                  style: const TextStyle(
                    fontSize: 32.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
