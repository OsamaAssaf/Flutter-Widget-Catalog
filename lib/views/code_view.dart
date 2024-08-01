import '../resources/all_imports.dart';

class CodeView extends StatelessWidget {
  const CodeView({
    super.key,
    required this.widgetModel,
  });

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
                  color: theme.colorScheme.surface,
                  size: 18.0,
                ),
                label: Text(
                  'Watch Video',
                  style: TextStyle(
                    color: theme.colorScheme.surface,
                    fontSize: 14.0,
                  ),
                ),
              ),
          ],
          bottom: TabBar(
            indicatorColor: theme.colorScheme.surface,
            labelColor: theme.colorScheme.surface,
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
