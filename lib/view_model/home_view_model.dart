import 'package:flutter/cupertino.dart';

import '../views/basics/text_view.dart';
import '../views/basics/appbar_view.dart';
import '../views/basics/container_view.dart';
import '../views/basics/column_view.dart';
import '../views/basics/row_view.dart';
import '../views/basics/icons_view.dart';
import '../views/basics/images_view.dart';
import '../views/basics/flutter_logo_view.dart';
import '../views/buttons/elevated_button_view.dart';

class HomeViewModel {
  static const String baseGitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String baseBasicSourceFile = 'lib/views/basics/';
  static const String baseButtonsSourceFile = 'lib/views/buttons/';

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
    getBasicsMap(const ColumnView(), 'Column', 'column_view.dart'),
    getBasicsMap(const RowView(), 'Row', 'row_view.dart'),
    getBasicsMap(const IconsView(), 'Icons', 'icons_view.dart'),
    getBasicsMap(const ImagesView(), 'Images', 'images_view.dart'),
    getBasicsMap(const FlutterLogoView(), 'FlutterLogo', 'flutter_logo_view.dart'),
  ];

  static Map<String, dynamic> getButtonsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$baseButtonsSourceFile$fileName',
      'codeLinkPrefix': baseGitHubPath,
    };
  }

  List<Map<String, dynamic>> buttonsWidgets = [
    getButtonsMap(const ElevatedButtonView(), 'ElevatedButton', 'elevated_button_view.dart'),
  ];


}
