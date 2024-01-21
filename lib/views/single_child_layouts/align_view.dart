import 'package:flutter/material.dart';

class AlignView extends StatelessWidget {
  const AlignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 240.0,
          width: 240.0,
          color: Colors.blue[50],

          /// A widget that aligns its child within itself and optionally sizes itself based on the child's size.
          child: const Align(
            alignment: Alignment.bottomRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
