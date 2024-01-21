import 'package:flutter/material.dart';

class FadeTransitionView extends StatefulWidget {
  const FadeTransitionView({super.key});

  @override
  State<FadeTransitionView> createState() => _FadeTransitionViewState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _FadeTransitionViewState extends State<FadeTransitionView> with TickerProviderStateMixin {
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
      curve: Curves.easeIn,
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
        child: FadeTransition(
          opacity: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(
              size: 120.0,
            ),
          ),
        ),
      ),
    );
  }
}
