import 'package:flutter/material.dart';

class ExpandedView extends StatelessWidget {
  const ExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
