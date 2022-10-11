import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  const CenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Center widget will align child widget in center.
      body: Center(
        child: Container(
          color: Colors.purple,
          width: 240.0,
          height: 240.0,
          child: const Center(
            child: Text('Center Text'),
          ),
        ),
      ),
    );
  }
}
