import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../models/widget_model.dart';
import '../resources/widgets/main_app_bar.dart';

class CodeView extends StatelessWidget {
  const CodeView({
    super.key,
    required this.widgetModel,
  });

  final WidgetModel widgetModel;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
                    await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  } catch (_) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Can\'t open the video, try again.'),
                        ),
                      );
                    }
                  }
                },
                icon: Icon(
                  Icons.video_library_outlined,
                  color: theme.colorScheme.background,
                  size: 18.0,
                ),
                label: Text(
                  'Watch Video',
                  style: TextStyle(
                    color: theme.colorScheme.background,
                    fontSize: 14.0,
                  ),
                ),
              ),
          ],
          bottom: TabBar(
            indicatorColor: theme.colorScheme.background,
            labelColor: theme.colorScheme.background,
            tabs: const <Tab>[
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
