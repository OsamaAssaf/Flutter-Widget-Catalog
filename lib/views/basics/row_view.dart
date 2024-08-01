import '../../resources/all_imports.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('First Child'),
        Text('Second Child'),
        Text('Third Child'),
      ],
    );
  }
}
