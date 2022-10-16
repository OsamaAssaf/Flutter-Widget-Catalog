import 'package:flutter/material.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({Key? key}) : super(key: key);

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  TextEditingController _controller1 = TextEditingController();

  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              TextField(
                /// Use controller to get and mange the text.
                controller: _controller1,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              const SizedBox(height: 16.0,),
              TextField(
                /// Use controller to get and mange the text.
                controller: _controller2,
                decoration:const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
              const SizedBox(height: 16.0,),
              ElevatedButton(onPressed: (){
                /// firstText variable well give you the text in first TextField
                String firstText = _controller1.text;
                /// secondText variable well give you the text in second TextField
                String secondText = _controller1.text;
              }, child:const Text('Print the texts')),
            ],
          ),
        ),
      ),
    );
  }
}
