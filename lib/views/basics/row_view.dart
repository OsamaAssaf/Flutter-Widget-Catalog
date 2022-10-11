import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('First Child'),
        Text('Second Child'),
        Text('Third Child'),
      ],
    );
  }
}
