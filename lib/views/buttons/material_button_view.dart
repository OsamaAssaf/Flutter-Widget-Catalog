// Flutter imports:
import 'package:flutter/material.dart';

class MaterialButtonView extends StatelessWidget {
  const MaterialButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const MaterialButton(
            onPressed: null,
            color: Colors.red,
            child: Text('Disabled'),
          ),
          const SizedBox(height: 32),
          MaterialButton(
            onPressed: () {
              // TODO: write your code here
            },
            color: Colors.purple,
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
