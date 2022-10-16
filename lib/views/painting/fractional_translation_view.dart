import 'package:flutter/material.dart';


class FractionalTranslationView extends StatelessWidget {
  const FractionalTranslationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        /// Applies a translation transformation before painting its child.
        child: FractionalTranslation(
          /// The translation is expressed as a Offset scaled to the child's size.
          /// For example, an Offset with a dx of 0.25 will result in a horizontal translation of one quarter the width of the child.
          translation: Offset(0, 0),
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
