import 'package:flutter/material.dart';

class SizedBoxView extends StatelessWidget {
  const SizedBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// A box with a specified size.
        child: SizedBox(
          width: 120.0,
          height: 200.0,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
