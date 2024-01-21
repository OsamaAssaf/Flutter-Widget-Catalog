import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Column can take multiple child (This is the first child)'),
        const Text('This is second child'),
        Container(
          height: 40.0,
          color: Colors.blue,
          child: const Text(
              'Column can take any type of widgets, this is a Container with Text as child'),
        ),
      ],
    );
  }
}
