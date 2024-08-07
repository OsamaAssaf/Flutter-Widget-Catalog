import '../../resources/all_imports.dart';

class OutlinedButtonView extends StatelessWidget {
  const OutlinedButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(),
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 32),
          OutlinedButton(
            onPressed: () {
              // TODO: write your code here
            },
            style: OutlinedButton.styleFrom(),
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
