// ignore_for_file: unused_local_variable

import '../../resources/all_imports.dart';

class AutoCompleteView extends StatefulWidget {
  const AutoCompleteView({super.key});

  @override
  State<AutoCompleteView> createState() => _AutoCompleteViewState();
}

class _AutoCompleteViewState extends State<AutoCompleteView> {
  static const List<String> _fruitsList = <String>[
    'apple',
    'orange',
    'banana',
    'mango',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          /// A widget for helping the user make a selection by entering some text and choosing from among a list of options.
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              String inputValue = textEditingValue.text;
              if (inputValue.isEmpty) {
                return const Iterable<String>.empty();
              }
              return _fruitsList
                  .where((String option) => option.contains(inputValue.toLowerCase()));
            },
            onSelected: (String selection) {
              /// To get selected item.
              String selectedItem = selection;
            },
          ),
        ),
      ),
    );
  }
}
