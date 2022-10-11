import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'basics/appbar_view.dart';
import 'code_view.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
   HomeView({Key? key}) : super(key: key);

  final HomeViewModel _viewModel = HomeViewModel();

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
                children: _viewModel.basicsWidgets.map((item) => ListTile(
                  title:  Text(item['title']),
                  trailing: const Icon(Icons.arrow_forward_ios,size: 18.0,),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: CodeView(
                          child: item['child'],
                          title: item['title'],
                          sourceFilePath: item['sourceFilePath'],
                          codeLinkPrefix: item['codeLinkPrefix'],
                        ),
                        type: PageTransitionType.leftToRight,
                      ),
                    );
                  },
                )).toList(),
              ),
              ExpansionTile(
                title: const Text('Buttons'),
                subtitle: const Text(
                  'Clickable widgets.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.buttonsWidgets.map((item) => ListTile(
                  title:  Text(item['title']),
                  trailing: const Icon(Icons.arrow_forward_ios,size: 18.0,),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: CodeView(
                          child: item['child'],
                          title: item['title'],
                          sourceFilePath: item['sourceFilePath'],
                          codeLinkPrefix: item['codeLinkPrefix'],
                        ),
                        type: PageTransitionType.leftToRight,
                      ),
                    );
                  },
                )).toList(),
              ),
            ],
          ),
        ));
  }
}
