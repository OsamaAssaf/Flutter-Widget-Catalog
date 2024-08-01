import '../../resources/all_imports.dart';

class DraggableView extends StatefulWidget {
  const DraggableView({super.key});

  @override
  State<DraggableView> createState() => _DraggableViewState();
}

class _DraggableViewState extends State<DraggableView> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          /// A widget that can be dragged from to a DragTarget.
          Draggable<int>(
            /// Data is the value this Draggable stores.
            data: 10,
            feedback: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: const Icon(Icons.directions_run),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.pinkAccent,
              child: const Center(
                child: Text('Child When Dragging'),
              ),
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.lightGreenAccent,
              child: const Center(
                child: Text('Draggable'),
              ),
            ),
          ),

          /// A widget that receives data when a Draggable widget is dropped.
          DragTarget<int>(
            builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected) {
              return Container(
                height: 100.0,
                width: 100.0,
                color: Colors.cyan,
                child: Center(
                  child: Text('Value is updated to: $acceptedData'),
                ),
              );
            },
            onAcceptWithDetails: (DragTargetDetails<int> details) {
              setState(() {
                acceptedData += details.data;
              });
            },
          ),
        ],
      ),
    );
  }
}
