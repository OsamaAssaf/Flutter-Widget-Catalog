// Flutter imports:
import 'package:flutter/material.dart';

class PositionedTransitionView extends StatefulWidget {
  const PositionedTransitionView({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionView> createState() => _PositionedTransitionViewState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _PositionedTransitionViewState extends State<PositionedTransitionView> with TickerProviderStateMixin{

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
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final Size biggest = constraints.biggest;
          return Stack(
            children: <Widget>[
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                      const Rect.fromLTWH(0, 0, smallLogo, smallLogo), biggest),
                  end: RelativeRect.fromSize(
                      Rect.fromLTWH(biggest.width - bigLogo,
                          biggest.height - bigLogo, bigLogo, bigLogo),
                      biggest),
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.elasticInOut,
                )),
                child: const Padding(
                    padding: EdgeInsets.all(8), child: FlutterLogo()),
              ),
            ],
          );
        },
      ),
    );
  }
}
