// Flutter imports:
import 'package:flutter/material.dart';

class IconButtonView extends StatelessWidget {
  const IconButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const IconButton(
            onPressed: null,
            icon:  Icon(Icons.home),
          ),
          const SizedBox(height: 32),
          IconButton(
            onPressed: () {
              // TODO: write your code here
            },
            icon:const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
