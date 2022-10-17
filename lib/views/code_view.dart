import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:url_launcher/url_launcher.dart';
class CodeView extends StatelessWidget {
  const CodeView(
      {Key? key,
      required this.child,
      required this.title,
      required this.sourceFilePath,
      required this.codeLinkPrefix,
      required this.videoUrl,
      })
      : super(key: key);

  final String title;
  final Widget child;
  final String sourceFilePath;
  final String codeLinkPrefix;
  final String? videoUrl;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
        actions: [
          if(videoUrl != null)
          TextButton.icon(
            onPressed: () async{
              try{
                Uri url  = Uri.parse(videoUrl!);
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              }catch(_){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Can\'t open the video, try again.')));
              }

            },
            icon: const Icon(
              Icons.video_library_outlined,
              color: Colors.white,
            ),
            label: const Text(
              'Watch Video',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: WidgetWithCodeView(
        syntaxHighlighterStyle: SyntaxHighlighterStyle.darkThemeStyle(),
        sourceFilePath: sourceFilePath,
        codeLinkPrefix: codeLinkPrefix,
        child: child,
      ),
    );
  }
}
