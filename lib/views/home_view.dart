import 'dart:io';

import 'package:flutter/material.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:upgrader/upgrader.dart';

import '../main.dart';
import '../models/expansion_model.dart';
import '../resources/managers/colors_manager.dart';
import '../resources/widgets/main_app_bar.dart';
import '../view_model/home_view_model.dart';
import 'about_view.dart';
import 'code_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeViewModel>(context, listen: false).loadBannerAd();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    List<ExpansionModel> items = _viewModel.homeExpansionTiles;
    return UpgradeAlert(
      upgrader: Upgrader(
        messages: UpgraderMessages(code: localizations.localeName),
        durationUntilAlertAgain: const Duration(days: 1),
      ),
      dialogStyle: Platform.isIOS ? UpgradeDialogStyle.cupertino : UpgradeDialogStyle.material,
      child: Stack(
        children: [
          Scaffold(
            appBar: const MainAppBar(
              title: 'Flutter Catalog',
            ),
            body: Padding(
              padding: EdgeInsets.only(
                bottom: AdSize.banner.height.toDouble() + 8.0,
              ),
              child: ListView.separated(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  ExpansionModel item = items[index];
                  return ExpansionTile(
                    backgroundColor: ColorsManager.neutralGrey,
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
            ),
            // bottomSheet: Consumer<HomeViewModel>(
            //   builder: (BuildContext context, HomeViewModel provider, _) {
            //     if (provider.bannerAd == null) {
            //       return const SizedBox.shrink();
            //     }
            //     return SizedBox(
            //       width: provider.bannerAd!.size.width.toDouble(),
            //       height: provider.bannerAd!.size.height.toDouble(),
            //       child: AdWidget(ad: provider.bannerAd!),
            //     );
            //   },
            // ),
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
                  SizedBox(height: AdSize.banner.height.toDouble() + 8.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Consumer<HomeViewModel>(
              builder: (BuildContext context, HomeViewModel provider, _) {
                if (provider.bannerAd == null) {
                  return const SizedBox.shrink();
                }
                return SizedBox(
                  width: provider.bannerAd!.size.width.toDouble(),
                  height: provider.bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: provider.bannerAd!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
