import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/theme.dart';

class CodeView extends StatelessWidget {
  const CodeView({
    Key? key,
    required this.child,
    required this.title,
    required this.sourceFilePath,
    required this.codeLinkPrefix,
    required this.videoUrl,
  }) : super(key: key);

  final String title;
  final Widget child;
  final String sourceFilePath;
  final String codeLinkPrefix;
  final String? videoUrl;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: CustomTheme.headline1,
          ),
          elevation: 0,
          backgroundColor: CustomTheme.primaryColor,
          actions: [
            if (videoUrl != null)
              TextButton.icon(
                onPressed: () async {
                  try {
                    Uri url = Uri.parse(videoUrl!);
                    if (!await launchUrl(url)) {
                      throw 'Could not launch $url';
                    }
                  } catch (_) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text('Can\'t open the video, try again.')));
                  }
                },
                icon: const Icon(
                  Icons.video_library_outlined,
                  color: CustomTheme.textPrimaryColor,
                ),
                label: const Text(
                  'Watch Video',
                  style: TextStyle(
                    color: CustomTheme.textPrimaryColor,
                  ),
                ),
              ),
          ],
          bottom: TabBar(
            indicatorColor: CustomTheme.secondaryColor,
            indicatorWeight: 3.0,
            tabs: <Tab>[
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.phone_android_outlined),
                    SizedBox(width: 16.0),
                    Text('Preview'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
            child,
            SourceCodeView(
              filePath: sourceFilePath,
              codeLinkPrefix: codeLinkPrefix,
            ),
          ],
        ),
      ),
    );
  }
}
