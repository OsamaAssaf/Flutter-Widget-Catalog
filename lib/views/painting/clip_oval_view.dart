import '../../resources/all_imports.dart';

class ClipOvalView extends StatelessWidget {
  const ClipOvalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// A widget that clips its child using an oval.
        child: ClipOval(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
