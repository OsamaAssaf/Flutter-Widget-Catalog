import '../../resources/all_imports.dart';

class ScaleTransitionView extends StatefulWidget {
  const ScaleTransitionView({super.key});

  @override
  State<ScaleTransitionView> createState() => _ScaleTransitionViewState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ScaleTransitionViewState extends State<ScaleTransitionView> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
