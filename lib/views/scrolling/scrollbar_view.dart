// Flutter imports:
import 'package:flutter/material.dart';

class ScrollbarView extends StatefulWidget {
  const ScrollbarView({Key? key}) : super(key: key);

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
