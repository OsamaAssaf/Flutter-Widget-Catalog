// Flutter imports:
import 'package:flutter/material.dart';

class RotatedBoxView extends StatefulWidget {
  const RotatedBoxView({Key? key}) : super(key: key);

  @override
  State<RotatedBoxView> createState() => _RotatedBoxViewState();
}

class _RotatedBoxViewState extends State<RotatedBoxView> {
  int _quarterTurns = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// A widget that rotates its child by a integral number of quarter turns.
            RotatedBox(
              quarterTurns: _quarterTurns,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: 140.0,
                height: 80.0,
                child: const Text(
                  'Hello World!',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_quarterTurns == 3) {
                    _quarterTurns = 0;
                    return;
                  }
                  _quarterTurns++;
                });
              },
              child: const Text('Rotate'),
            ),
          ],
        ),
      ),
    );
  }
}
