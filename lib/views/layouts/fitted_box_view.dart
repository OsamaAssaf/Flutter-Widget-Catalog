import 'package:flutter/material.dart';

class FittedBoxView extends StatelessWidget {
  const FittedBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Scales and positions its child within itself according to fit.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The text is "Hello, World!" without FittedBox'),
            Container(
              color: Colors.purple,
              width: 120.0,
              height: 120.0,
              child:const Text('Hello, World!',style: TextStyle(fontSize: 80.0),),
            ),
            const SizedBox(height: 64.0,),
            const Text('The text is "Hello, World!" with FittedBox'),
            Container(
              color: Colors.purple,
              width: 120.0,
              height: 120.0,
              child:const FittedBox(child:  Text('Hello, World!',style: TextStyle(fontSize: 80.0),),),
            ),

          ],
        )
      ),
    );
  }
}
