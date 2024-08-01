import '../../resources/all_imports.dart';

class GridViewView extends StatelessWidget {
  const GridViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// A scrollable, 2D array of widgets.
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
        ),
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry A'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[500],
            child: const Center(
              child: Text('Entry B'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[100],
            child: const Center(
              child: Text('Entry C'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry D'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[500],
            child: const Center(
              child: Text('Entry E'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[100],
            child: const Center(
              child: Text('Entry F'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry G'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[500],
            child: const Center(
              child: Text('Entry H'),
            ),
          ),
          Container(
            height: 150,
            color: Colors.amber[100],
            child: const Center(
              child: Text('Entry I'),
            ),
          ),
        ],
      ),
    );
  }
}
