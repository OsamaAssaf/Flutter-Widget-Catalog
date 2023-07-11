// Flutter imports:
import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('First Child'),
        Text('Second Child'),
        Text('Third Child'),
      ],
    );
  }
}
