// Flutter imports:
import 'package:flutter/material.dart';

class AnimatedCrossFadeView extends StatefulWidget {
  const AnimatedCrossFadeView({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeView> createState() => _AnimatedCrossFadeViewState();
}

class _AnimatedCrossFadeViewState extends State<AnimatedCrossFadeView> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },

          /// A widget that cross-fades between two given children and animates itself between their sizes.
          child: AnimatedCrossFade(
            duration: const Duration(seconds: 3),
            firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
            secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
            crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}
