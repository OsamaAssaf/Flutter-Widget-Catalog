import 'package:flutter/material.dart';

class DropdownButtonView extends StatelessWidget {
  const DropdownButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<DropdownMenuItem>(
        items: [],
        onChanged: (Object? value) {},
      ),
    );
  }
}
