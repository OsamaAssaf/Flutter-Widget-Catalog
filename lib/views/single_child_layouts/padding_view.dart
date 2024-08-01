import '../../resources/all_imports.dart';

class PaddingView extends StatelessWidget {
  const PaddingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
