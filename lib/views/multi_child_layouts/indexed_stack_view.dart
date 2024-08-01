import '../../resources/all_imports.dart';

class IndexedStackView extends StatefulWidget {
  const IndexedStackView({super.key});

  @override
  State<IndexedStackView> createState() => _IndexedStackViewState();
}

class _IndexedStackViewState extends State<IndexedStackView> {
  int _currentIndex = 0;

  List<String> names = ['John', 'Erica', 'Jordan', 'Rick'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (_currentIndex == 0) {
                    _currentIndex = names.length - 1;
                  } else {
                    _currentIndex--;
                  }
                });
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            Container(
              width: 200.0,
              height: 140.0,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(24.0),
              ),

              /// A Stack that shows a single child from a list of children.
              child: IndexedStack(
                alignment: Alignment.center,
                index: _currentIndex,
                children: names
                    .map((name) => Text(
                          name,
                          style: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ))
                    .toList(),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (_currentIndex == names.length - 1) {
                    _currentIndex = 0;
                  } else {
                    _currentIndex++;
                  }
                });
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
