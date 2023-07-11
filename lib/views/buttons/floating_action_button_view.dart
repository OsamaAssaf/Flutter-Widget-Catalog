// Flutter imports:
import 'package:flutter/material.dart';

class FloatingActionButtonView extends StatelessWidget {
  const FloatingActionButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: (){
          // TODO: write your code here
        },
      ),
    );
  }
}
