import 'package:flutter/material.dart';

class ClipRectView extends StatelessWidget {
  const ClipRectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// By combining a ClipRect with an Align, one can show just the left half of an Image:
        child: ClipRect(
          child: Align(
            alignment: Alignment.centerLeft,
            // heightFactor: 0.5,
            widthFactor: 0.5,
            child: Container(
              color: Colors.red,
              child: Image.asset(
                'assets/images/flutter_logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
