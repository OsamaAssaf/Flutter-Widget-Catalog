import '../../resources/all_imports.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: double.infinity,
          height: 100.0,

          /// A widget that attempts to size the child to a specific aspect ratio.
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
