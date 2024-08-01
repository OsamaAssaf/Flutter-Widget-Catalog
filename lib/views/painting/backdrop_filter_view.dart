import 'dart:ui';

import '../../resources/all_imports.dart';

class BackdropFilterView extends StatelessWidget {
  const BackdropFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 10000),
          Center(
            child: ClipRect(
              // <-- clips to the 200x200 [Container] below
              /// A widget that applies a filter to the existing painted content and then paints child.
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Image.asset(ImagesAssets().flutterLogo),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
