import '../../resources/all_imports.dart';

class ReorderableListViewView extends StatefulWidget {
  const ReorderableListViewView({super.key});

  @override
  State<ReorderableListViewView> createState() => _ReorderableListViewViewState();
}

class _ReorderableListViewViewState extends State<ReorderableListViewView> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// A list whose items the user can interactively reorder by dragging.
      body: ReorderableListView(
        padding: const EdgeInsets.all(16.0),
        header: const Center(
          child: Text(
            'This is header.',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
        ),
        children: _items
            .map(
              (item) => ListTile(
                key: ValueKey(item),
                tileColor: item.isOdd ? Colors.white : Colors.grey,
                title: Text('Item $item'),
                trailing: const Icon(Icons.drag_handle_outlined),
              ),
            )
            .toList(),
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        },
      ),
    );
  }
}
