import 'package:flutter/material.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Catalog'),
      ),
      body: ListView(
        children: [

        ],
      )
    );
  }
}
