import '../../resources/all_imports.dart';

class ElevatedButtonView extends StatelessWidget {
  const ElevatedButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(),
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              // TODO: write your code here
            },
            style: ElevatedButton.styleFrom(),
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
