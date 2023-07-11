// Flutter imports:
import 'package:flutter/material.dart';

class RotationTransitionView extends StatefulWidget {
  const RotationTransitionView({Key? key}) : super(key: key);

  @override
  State<RotationTransitionView> createState() => _RotationTransitionViewState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _RotationTransitionViewState extends State<RotationTransitionView> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
