import '../../resources/all_imports.dart';

class IconButtonView extends StatelessWidget {
  const IconButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.home),
          ),
          const SizedBox(height: 32),
          IconButton(
            onPressed: () {
              // TODO: write your code here
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
