import 'package:flutter/cupertino.dart';

import '../views/basics/scaffold_view.dart';
import '../views/basics/text_view.dart';
import '../views/basics/appbar_view.dart';
import '../views/basics/container_view.dart';
import '../views/basics/column_view.dart';
import '../views/basics/row_view.dart';
import '../views/basics/icons_view.dart';
import '../views/basics/images_view.dart';
import '../views/basics/flutter_logo_view.dart';
import '../views/buttons/elevated_button_view.dart';
import '../views/buttons/text_button_view.dart';
import '../views/buttons/outlined_button_view.dart';
import '../views/buttons/icon_button_view.dart';
import '../views/buttons/floating_action_button_view.dart';
import '../views/buttons/material_button_view.dart';
import '../views/buttons/dropdown_button_view.dart';
import '../views/buttons/popup_menu_button_view.dart';
import '../views/layouts/center_view.dart';
import '../views/layouts/constrained_box_view.dart';
import '../views/layouts/aspect_ratio_view.dart';
import '../views/layouts/fitted_box_view.dart';
import '../views/layouts/expanded_view.dart';
import '../views/layouts/padding_view.dart';
import '../views/layouts/sized_box_view.dart';

class HomeViewModel {
  static const String gitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String basicSourceFile = 'lib/views/basics/';
  static const String buttonsSourceFile = 'lib/views/buttons/';
  static const String layoutsSourceFile = 'lib/views/layouts/';

  static Map<String, dynamic> getBasicsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$basicSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

  List<String> allWidgetsList = [
    'Scaffold','Text',
    'AppBar','Container',
    'Column','Row',
    'Icons','Images',
    'Flutter Logo','Elevated Button',
    'Text Button','Outlined Button',
    'Icon Button','Floating Action Button',
    'Material Button','Dropdown Button',
    'Popup Menu Button','Center',
    'Constrained Box','Aspect Ratio',
    'Fitted Box','Expanded',
    'Padding','Sized Box',
  ];

  List<Map<String, dynamic>> basicsWidgets = [
    getBasicsMap(const ScaffoldView(), 'Scaffold', 'scaffold_view.dart'),
    getBasicsMap(const TextView(), 'Text', 'text_view.dart'),
    getBasicsMap(const AppBarView(), 'AppBar', 'appbar_view.dart'),
    getBasicsMap(const ContainerView(), 'Container', 'container_view.dart'),
    getBasicsMap(const ColumnView(), 'Column', 'column_view.dart'),
    getBasicsMap(const RowView(), 'Row', 'row_view.dart'),
    getBasicsMap(const IconsView(), 'Icons', 'icons_view.dart'),
    getBasicsMap(const ImagesView(), 'Images', 'images_view.dart'),
    getBasicsMap(const FlutterLogoView(), 'Flutter Logo', 'flutter_logo_view.dart'),
  ];

  static Map<String, dynamic> getButtonsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$buttonsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

  List<Map<String, dynamic>> buttonsWidgets = [
    getButtonsMap(const ElevatedButtonView(), 'Elevated Button', 'elevated_button_view.dart'),
    getButtonsMap(const TextButtonView(), 'Text Button', 'text_button_view.dart'),
    getButtonsMap(const OutlinedButtonView(), 'Outlined Button', 'outlined_button_view.dart'),
    getButtonsMap(const IconButtonView(), 'Icon Button', 'icon_button_view.dart'),
    getButtonsMap(const FloatingActionButtonView(), 'Floating Action Button', 'floating_action_button_view.dart'),
    getButtonsMap(const MaterialButtonView(), 'Material Button', 'material_button_view.dart'),
    getButtonsMap(const DropdownButtonView(), 'Dropdown Button', 'dropdown_button_view.dart'),
    getButtonsMap(const PopupMenuButtonView(), 'Popup Menu Button', 'popup_menu_button_view.dart'),
  ];


  static Map<String, dynamic> getLayoutsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$layoutsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }


  List<Map<String, dynamic>> layoutWidgets = [
    getButtonsMap(const CenterView(), 'Center', 'center_view.dart'),
    getButtonsMap(const ConstrainedBoxView(), 'Constrained Box', 'constrained_box_view.dart'),
    getButtonsMap(const AspectRatioView(), 'Aspect Ratio', 'aspect_ratio_view.dart'),
    getButtonsMap(const FittedBoxView(), 'Fitted Box', 'fitted_box_view.dart'),
    getButtonsMap(const ExpandedView(), 'Expanded', 'expanded_view.dart'),
    getButtonsMap(const PaddingView(), 'Padding', 'padding_view.dart'),
    getButtonsMap(const SizedBoxView(), 'Sized Box', 'sized_box_view.dart'),

  ];


}
