import '../../resources/all_imports.dart';

class ScaffoldView extends StatefulWidget {
  const ScaffoldView({super.key});

  @override
  State<ScaffoldView> createState() => _ScaffoldViewState();
}

class _ScaffoldViewState extends State<ScaffoldView> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    /// The Scaffold widget is the parent widget for any screen.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
