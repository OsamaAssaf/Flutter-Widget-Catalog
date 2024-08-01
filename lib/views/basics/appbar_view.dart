import '../../resources/all_imports.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// You can assign page title using title property
        title: const Text('Page Title'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
