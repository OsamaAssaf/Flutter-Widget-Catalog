import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'code_view.dart';
import '../view_model/home_view_model.dart';
import '../res/theme.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = _viewModel.homeExpansionTiles;
    return Scaffold(
      backgroundColor: CustomTheme.bgDarkColor,
      appBar: AppBar(
        title: const Text(
          'Flutter Catalog',
          style: CustomTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: CustomTheme.primaryDarkColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> item = items[index];
            return Card(
              color: CustomTheme.secondaryDarkColor,
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ExpansionTile(
                textColor: CustomTheme.primaryDarkColor,
                iconColor: CustomTheme.primaryDarkColor,
                childrenPadding: const EdgeInsets.all(8.0),
                title: Text(
                  item['title'],
                  style: CustomTheme.headline2,
                ),
                subtitle: Text(
                  item['subtitle'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTheme.headline3,
                ),
                children: item['list']
                    .map<Widget>((item) => ListTile(
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
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: CustomTheme.primaryDarkColor,
              ),
              child: Text(
                'Flutter Widget Catalog',
                style: CustomTheme.headline1,
              ),
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.info_outlined),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
