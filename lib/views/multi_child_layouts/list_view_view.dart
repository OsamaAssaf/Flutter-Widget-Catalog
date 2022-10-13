
import 'package:flutter/material.dart';

class ListViewView extends StatelessWidget {
  const ListViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// A scrollable list of widgets arranged linearly.
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A'),),
          ),
          Container(
            height: 150,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B'),),
          ),
          Container(
            height: 150,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C'),),
          ),
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry D'),),
          ),
          Container(
            height: 150,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry E'),),
          ),
          Container(
            height: 150,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry F'),),
          ),

        ],
      ),
    );
  }
}




