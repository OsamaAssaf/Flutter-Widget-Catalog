import 'package:flutter/cupertino.dart';

import '../views/basics/text_view.dart';
import '../views/basics/appbar_view.dart';
import '../views/basics/container_view.dart';

class HomeViewModel {
  static const String baseGitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String baseBasicSourceFile = 'lib/views/basics/';

  static Map<String, dynamic> getBasicsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$baseBasicSourceFile$fileName',
      'codeLinkPrefix': baseGitHubPath,
    };
  }

  List<Map<String, dynamic>> basicsWidgets = [
    getBasicsMap(const TextView(), 'Text', 'text_view.dart'),
    getBasicsMap(const AppBarView(), 'AppBar', 'appbar_view.dart'),
    getBasicsMap(const ContainerView(), 'Container', 'container_view.dart'),

  ];


}
