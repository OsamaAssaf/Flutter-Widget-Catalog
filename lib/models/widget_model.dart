// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../resources/constants_manager.dart';

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
