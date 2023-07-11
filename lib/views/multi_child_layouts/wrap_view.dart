// Flutter imports:
import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        /// A widget that displays its children in multiple horizontal or vertical runs.
        child: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Text('Hamilton'),
            Text('Lafayette'),
            Text('Mulligan'),
            Text('Laurens'),
            Text('Hamilton'),
            Text('Lafayette'),
            Text('Mulligan'),
            Text('Laurens'),
            Text('Hamilton'),
            Text('Lafayette'),
            Text('Mulligan'),
            Text('Laurens'),
          ],
        ),
      ),
    );
  }
}
