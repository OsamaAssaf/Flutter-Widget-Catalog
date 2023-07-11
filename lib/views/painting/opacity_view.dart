// Flutter imports:
import 'package:flutter/material.dart';

class OpacityView extends StatefulWidget {
  const OpacityView({Key? key}) : super(key: key);

  @override
  State<OpacityView> createState() => _OpacityViewState();
}

class _OpacityViewState extends State<OpacityView> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: _visible ? 1.0 : 0.0,
              child: const Text("Now you see me, now you don't!",style: TextStyle(fontSize: 32.0),),
            ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              child: Text(_visible ? 'Hide' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}
