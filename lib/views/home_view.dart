import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/views/basics/appbar_view.dart';
import 'package:flutter_widget_catalog/views/code_view.dart';

import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:page_transition/page_transition.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Catalog'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ExpansionTile(
                title: const Text('Basics'),
                subtitle: const Text(
                  'Widgets you absolutely need to know before building your first Flutter app.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: [
                  ListTile(
                    title: const Text('AppBar'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: CodeView(
                            child: AppBarView(),
                            title: 'AppBar',
                            sourceFilePath: 'lib/views/basics/appbar_view.dart',
                            codeLinkPrefix: 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/lib/views/home_view.dart',
                          ),
                          type: PageTransitionType.leftToRight,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
