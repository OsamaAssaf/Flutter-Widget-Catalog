import 'package:flutter/material.dart';

class HeroView extends StatelessWidget {
  const HeroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          ListTile(
            leading:  Hero(
              tag: 'hero-rectangle',
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.green,
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) =>const SecondScreen()));
            },
            title: const Text(
              'Tap on the icon to view hero animation transition.',
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child:  Hero(
          tag: 'hero-rectangle',
          child: Container(
            width: 250.0,
            height: 250.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
