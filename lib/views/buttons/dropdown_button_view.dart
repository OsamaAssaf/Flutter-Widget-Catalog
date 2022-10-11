import 'package:flutter/material.dart';

class DropdownButtonView extends StatefulWidget {
  const DropdownButtonView({Key? key}) : super(key: key);

  @override
  State<DropdownButtonView> createState() => _DropdownButtonViewState();
}

class _DropdownButtonViewState extends State<DropdownButtonView> {
  List<String> items = ['One', 'Two', 'Three'];
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: items
            .map(
              (String value) => DropdownMenuItem(
                value: value,
                child: Text(value),
              ),
            )
            .toList(),

      ),
    );
  }
}
