// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:page_transition/page_transition.dart';

// Project imports:
import 'package:flutter_widget_catalog/models/expansion_model.dart';
import 'package:flutter_widget_catalog/resources/widgets/main_app_bar.dart';
import '../view_model/home_view_model.dart';
import 'about_view.dart';
import 'code_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    List<ExpansionModel> items = _viewModel.homeExpansionTiles;
    return Scaffold(
      appBar: const MainAppBar(
        title: 'Flutter Catalog',
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          ExpansionModel item = items[index];
          return ExpansionTile(
            textColor: theme.colorScheme.primary,
            iconColor: theme.colorScheme.primary,
            childrenPadding: const EdgeInsets.all(8.0),
            title: Text(
              item.title,
              style: theme.textTheme.displayMedium,
            ),
            subtitle: Text(
              item.subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displaySmall,
            ),
            children: item.widgets
                .map<Widget>(
                  (item) => ListTile(
                    title: Text(item.title),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: CodeView(
                            widgetModel: item,
                            // title: item.title,
                            // sourceFilePath: item.sourceFilePath,
                            // codeLinkPrefix: item.codeLinkPrefix,
                            // videoUrl: item.videoUrl,
                            // child: item.child,
                          ),
                          type: PageTransitionType.leftToRight,
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
      drawer: Drawer(
        // backgroundColor: CustomTheme.bgColor,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
              child: Text(
                'Flutter Widget Catalog',
                style: theme.textTheme.displayLarge,
              ),
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              leading: const Icon(
                Icons.info_outlined,
                size: 28.0,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 20.0,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const AboutView(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
