import 'package:flutter/material.dart';

class DismissibleView extends StatefulWidget {
  const DismissibleView({super.key});

  @override
  State<DismissibleView> createState() => _DismissibleViewState();
}

class _DismissibleViewState extends State<DismissibleView> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            background: Container(
              color: Colors.red,
            ),
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(
                'Item ${items[index]}',
              ),
            ),
          );
        },
      ),
    );
  }
}
