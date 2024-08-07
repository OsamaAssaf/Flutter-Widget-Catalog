import '../../resources/all_imports.dart';

class ScrollbarView extends StatefulWidget {
  const ScrollbarView({super.key});

  @override
  State<ScrollbarView> createState() => _ScrollbarViewState();
}

class _ScrollbarViewState extends State<ScrollbarView> {
  final List<int> _items = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Scroll item: $index'),
            );
          },
        ),
      ),
    );
  }
}
