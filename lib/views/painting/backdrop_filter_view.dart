import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterView extends StatelessWidget {
  const BackdropFilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Image.asset('assets/images/flutter_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
