// Flutter imports:
import 'package:flutter/material.dart';

class PageViewView extends StatefulWidget {
  const PageViewView({Key? key}) : super(key: key);

  @override
  State<PageViewView> createState() => _PageViewViewState();
}

class _PageViewViewState extends State<PageViewView> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// A scrollable list that works page by page.
      body: PageView(
        controller: _pageController,

        /// Default scrollDirection is Axis.horizontal.
        scrollDirection: Axis.horizontal,
        children: const [
          Center(
            child: Text(
              'First Page',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
                fontSize: 32.0,
              ),
            ),
          ),
          Center(
            child: Text(
              'Second Page',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
                fontSize: 32.0,
              ),
            ),
          ),
          Center(
            child: Text(
              'Third Page',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
                fontSize: 32.0,
              ),
            ),
          ),
          Center(
            child: Text(
              'Fourth Page',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
                fontSize: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
