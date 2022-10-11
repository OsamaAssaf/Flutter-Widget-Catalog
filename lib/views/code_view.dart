

import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class CodeView extends StatelessWidget {
   const CodeView({Key? key,required this.child, required this.title, required this.sourceFilePath, required this.codeLinkPrefix}) : super(key: key);

  final String title;
  final Widget child;
  final String sourceFilePath;
  final String codeLinkPrefix;

  @override
  Widget build(BuildContext context) {
    print(codeLinkPrefix+sourceFilePath);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      body: WidgetWithCodeView(
        sourceFilePath: sourceFilePath,
        codeLinkPrefix: codeLinkPrefix,
        child: child,
      ),
    );
  }
}
