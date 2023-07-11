// Flutter imports:
import 'package:flutter/material.dart';

class AnimatedPositionedView extends StatefulWidget {
  const AnimatedPositionedView({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedView> createState() => _AnimatedPositionedViewState();
}

class _AnimatedPositionedViewState extends State<AnimatedPositionedView> {

  bool _isSelection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            left:_isSelection? 200.0:60.0,
            top: _isSelection? 150.0:60.0,
            duration: const Duration(seconds: 1),
            child:  GestureDetector(
              onTap: (){
                setState(() {
                  _isSelection = !_isSelection;
                });
              },
              child: Container(
                color: Colors.red,
                width: 120.0,
                height: 120.0,
                alignment: Alignment.center,
                child:const Text('Tap Me!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
