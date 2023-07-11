// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

// Project imports:
import 'package:flutter_widget_catalog/models/widget_model.dart';
import '../resources/widgets/main_app_bar.dart';

class CodeView extends StatelessWidget {
  const CodeView({
    Key? key,
    // required this.child,
    // required this.title,
    // required this.sourceFilePath,
    // required this.codeLinkPrefix,
    // required this.videoUrl,
    required this.widgetModel,
  }) : super(key: key);

  // final String title;
  // final Widget child;
  // final String sourceFilePath;
  // final String codeLinkPrefix;
  // final String? videoUrl;

  final WidgetModel widgetModel;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MainAppBar(
          title: widgetModel.title,
          actions: [
            if (widgetModel.videoUrl != null)
              TextButton.icon(
                onPressed: () async {
                  try {
                    Uri url = Uri.parse(widgetModel.videoUrl!);
                    if (!await launchUrl(url)) {
                      throw 'Could not launch $url';
                    }
                  } catch (_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Can\'t open the video, try again.')));
                  }
                },
                icon: const Icon(
                  Icons.video_library_outlined,
                  // color: CustomTheme.textPrimaryColor,
                ),
                label: const Text(
                  'Watch Video',
                  style: TextStyle(
                      // color: CustomTheme.textPrimaryColor,
                      ),
                ),
              ),
          ],
          bottom: const TabBar(
            // indicatorColor: CustomTheme.secondaryColor,
            indicatorWeight: 3.0,
            tabs: <Tab>[
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android_outlined),
                    SizedBox(width: 16.0),
                    Text('Preview'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.code),
                    SizedBox(width: 16.0),
                    Text('Code'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            widgetModel.child,
            WidgetWithCodeView(
              filePath: widgetModel.sourceFilePath,
              codeLinkPrefix: widgetModel.codeLinkPrefix,
            ),
          ],
        ),
      ),
    );
  }
}
