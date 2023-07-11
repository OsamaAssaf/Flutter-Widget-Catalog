// Flutter imports:
import 'package:flutter/material.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,
          /// A widget that attempts to size the child to a specific aspect ratio.
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
