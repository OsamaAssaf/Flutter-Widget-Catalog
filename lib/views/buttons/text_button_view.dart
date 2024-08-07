import '../../resources/all_imports.dart';

class TextButtonView extends StatelessWidget {
  const TextButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(),
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 32),
          TextButton(
            onPressed: () {
              // TODO: write your code here
            },
            style: TextButton.styleFrom(),
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
