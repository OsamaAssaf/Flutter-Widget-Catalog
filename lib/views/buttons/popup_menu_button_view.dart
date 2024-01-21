import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class PopupMenuButtonView extends StatefulWidget {
  const PopupMenuButtonView({super.key});

  @override
  State<PopupMenuButtonView> createState() => _PopupMenuButtonViewState();
}

class _PopupMenuButtonViewState extends State<PopupMenuButtonView> {
  List popupMenuItems = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String _selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                _selectedItem = value.toString();
              });
            },
            itemBuilder: (BuildContext context) {
              return popupMenuItems
                  .map((item) => PopupMenuItem<String>(value: item, child: Text(item)))
                  .toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Selected Item: $_selectedItem'),
      ),
    );
  }
}
