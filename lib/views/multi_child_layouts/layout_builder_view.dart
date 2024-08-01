import '../../resources/all_imports.dart';

class LayoutBuilderView extends StatelessWidget {
  const LayoutBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200.0,
              width: 320.0,
              color: Colors.purple,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  /// It will take half the height of the parent witch is 100.0.
                  double myHeight = constraints.maxHeight * 0.5;

                  /// It will take half the width of the parent witch is 160.0.
                  double myWidth = constraints.maxWidth * 0.5;
                  return Row(
                    children: [
                      Container(
                        height: myHeight,
                        width: myWidth,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      Container(
                        height: myHeight,
                        width: myWidth,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.purple,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  /// It will take half the height of the parent witch is 60.0.
                  double myHeight = constraints.maxHeight * 0.5;

                  /// It will take half the width of the parent witch is 60.0.
                  double myWidth = constraints.maxWidth * 0.5;
                  return Row(
                    children: [
                      Container(
                        height: myHeight,
                        width: myWidth,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      Container(
                        height: myHeight,
                        width: myWidth,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
