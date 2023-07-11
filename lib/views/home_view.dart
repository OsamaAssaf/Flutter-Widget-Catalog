// Flutter imports:
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/resources/colors_manager.dart';

// Package imports:
import 'package:page_transition/page_transition.dart';

// Project imports:
import 'package:flutter_widget_catalog/models/expansion_model.dart';
import 'package:flutter_widget_catalog/resources/widgets/main_app_bar.dart';
import 'package:upgrader/upgrader.dart';
import '../main.dart';
import '../view_model/home_view_model.dart';
import 'about_view.dart';
import 'code_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final double height = MediaQuery.of(context).size.height;
    List<ExpansionModel> items = _viewModel.homeExpansionTiles;
    return UpgradeAlert(
      upgrader: Upgrader(
        messages: UpgraderMessages(code: localizations.localeName),
        durationUntilAlertAgain: const Duration(days: 1),
        dialogStyle: Platform.isIOS
            ? UpgradeDialogStyle.cupertino
            : UpgradeDialogStyle.material,
      ),
      child: Scaffold(
        appBar: const MainAppBar(
          title: 'Flutter Catalog',
        ),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            ExpansionModel item = items[index];
            return ExpansionTile(
              backgroundColor: ColorsManager.neutralGrey,
              // collapsedBackgroundColor: ColorsManager.neutralGrey,
              collapsedTextColor: theme.colorScheme.primary,
              collapsedIconColor: theme.colorScheme.primary,
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
            return Divider(color: theme.colorScheme.secondary);
          },
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.20,
                color: theme.colorScheme.primary,
                alignment: Alignment.center,
                child: Text(
                  'Flutter Widget Catalog',
                  style: theme.textTheme.displayLarge,
                ),
              ),
              const SizedBox(height: 8.0),
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
              const Spacer(),
              Center(
                child: Text(
                  '${localizations.version}: ${packageInfo.version}',
                ),
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
