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
                children: _viewModel.basicsWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Buttons'),
                subtitle: const Text(
                  'Clickable widgets.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.buttonsWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Single-child layout widgets'),
                subtitle: const Text(
                  'Arrange other widgets columns, rows, grids, and many other single_child_layouts.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.singleLayoutWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Multi-child layout widgets'),
                subtitle: const Text(
                  'Arrange other widgets columns, rows, grids, and many other single_child_layouts.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.multiLayoutWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Input widgets'),
                subtitle: const Text(
                  'Take user input in addition to input widgets in Material Components and Cupertino.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.inputsWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Touch touch_interactions'),
                subtitle: const Text(
                  'Respond to touch events.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.interactionWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Routing'),
                subtitle: const Text(
                  'Route users to different views.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.routingWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Scrolling widgets'),
                subtitle: const Text(
                  'Scroll multiple widgets as children of the parent.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.scrollingWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Painting and effect widgets'),
                subtitle: const Text(
                  'These widgets apply visual effects to the children without changing their layout, size, or position.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.paintingWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Animation and motion widgets'),
                subtitle: const Text(
                  'Bring animations to your app.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.animationWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              ExpansionTile(
                title: const Text('Transitions widgets'),
                subtitle: const Text(
                  'Bring transitions to your app.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: _viewModel.transitionsWidgets
                    .map((item) => ListTile(
                          title: Text(item['title']),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: CodeView(
                                  child: item['child'],
                                  title: item['title'],
                                  sourceFilePath: item['sourceFilePath'],
                                  codeLinkPrefix: item['codeLinkPrefix'],
                                  videoUrl: item['videoUrl'],
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
            ],
          ),
        ));
  }
}
