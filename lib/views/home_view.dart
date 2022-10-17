import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/view_model/home_view_provider.dart';

import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'basics/appbar_view.dart';
import 'code_view.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = _viewModel.homeExpansionTiles;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Catalog',
          // style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> item = items[index];
            return Card(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ExpansionTile(
                title: Text(item['title']),
                subtitle: Text(
                  item['subtitle'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                children: item['list']
                    .map<Widget>(
                      (item) => ListTile(
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
                      ),
                    )
                    .toList(),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child:  Text(
                'Flutter Widget Catalog',
                // style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
