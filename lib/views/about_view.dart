import 'package:flutter/material.dart';

import '../res/theme.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      appBar: AppBar(
        title: const Text(
          'About',
          style: CustomTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: CustomTheme.primaryColor,
      ),
    );
  }
}
