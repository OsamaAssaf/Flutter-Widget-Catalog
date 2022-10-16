import 'package:flutter/material.dart';

class DecoratedBoxView extends StatelessWidget {
  const DecoratedBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        /// A widget that paints a Decoration either before or after its child paints.
        /// DecoratedBox has a lot of properties you can search about them.
        child: DecoratedBox(
          decoration:const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0, 0),
              radius: 0.15,
              colors: <Color>[
                Color(0xFFEEEEEE),
                Color(0xFF111133),
              ],
              stops: <double>[0.9, 1.0],
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child:const Text('Hello, World!'),
          ),
        ),
      ),
    );
  }
}
