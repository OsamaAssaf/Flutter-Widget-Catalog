import 'package:flutter/material.dart';

class ExpansionTileView extends StatefulWidget {
  const ExpansionTileView({Key? key}) : super(key: key);

  @override
  State<ExpansionTileView> createState() => _ExpansionTileViewState();
}

class _ExpansionTileViewState extends State<ExpansionTileView> {

  final List<String> _namesList = <String>[
    'Emma',
    'Charlotte',
    'Amelia',
    'Ava',
  ];

  String _selectedName = 'Choose one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title:  Text(_selectedName),
          children:_namesList.map((name) => ListTile(
            title: Text(name),
            onTap: (){
              setState(() {
                _selectedName = name;
              });
            },
          )).toList(),
        ),
      ),
    );
  }
}

