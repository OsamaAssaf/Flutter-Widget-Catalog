import '../resources/all_imports.dart';

class WidgetModel {
  final Widget child;
  final String title;
  final String sourceFilePath;
  final String? videoUrl;
  final String codeLinkPrefix;

  WidgetModel({
    required this.child,
    required this.title,
    required this.sourceFilePath,
    required this.videoUrl,
    this.codeLinkPrefix = ConstantsManager.gitHubPath,
  });
}
