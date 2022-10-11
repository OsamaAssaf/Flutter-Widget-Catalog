import 'package:flutter/material.dart';

class BackButtonView extends StatelessWidget {
  const BackButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BackButton(),
    );
  }
}
