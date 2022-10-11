import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 120.0,
        height: 120.0,
      ),
    );
  }
}
