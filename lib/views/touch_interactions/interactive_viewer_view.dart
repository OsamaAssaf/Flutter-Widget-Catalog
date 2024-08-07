import '../../resources/all_imports.dart';

class InteractiveViewerView extends StatelessWidget {
  const InteractiveViewerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        /// A widget that enables pan and zoom touch_interactions with its child.
        child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20.0),
            minScale: 0.1,
            maxScale: 1.6,
            child: const FlutterLogo(
              size: 240.0,
            )),
      ),
    );
  }
}
