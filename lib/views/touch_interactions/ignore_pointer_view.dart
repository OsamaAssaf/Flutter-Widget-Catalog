import 'package:flutter/material.dart';


class IgnorePointerView extends StatefulWidget {
  const IgnorePointerView({Key? key}) : super(key: key);

  @override
  State<IgnorePointerView> createState() => _IgnorePointerViewState();
}

class _IgnorePointerViewState extends State<IgnorePointerView> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setIgnoring(!ignoring);
              },
              child: Text(
                ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
              ),
            ),
            const SizedBox(height: 32.0,),
            IgnorePointer(
              ignoring: ignoring,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Ignoring: $ignoring'),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Click me!'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
