import 'package:flutter/material.dart';

class RefreshIndicatorView extends StatefulWidget {
  const RefreshIndicatorView({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorView> createState() => _RefreshIndicatorViewState();
}

class _RefreshIndicatorViewState extends State<RefreshIndicatorView> {

  List<int> _items = List.generate(25, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// A widget that supports the Material "swipe to refresh" idiom.
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          /// TODO: update your items list here.
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item ${_items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
