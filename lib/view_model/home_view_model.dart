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
import '../views/single_child_layouts/center_view.dart';
import '../views/single_child_layouts/constrained_box_view.dart';
import '../views/single_child_layouts/aspect_ratio_view.dart';
import '../views/single_child_layouts/fitted_box_view.dart';
import '../views/single_child_layouts/expanded_view.dart';
import '../views/single_child_layouts/padding_view.dart';
import '../views/single_child_layouts/sized_box_view.dart';
import '../views/single_child_layouts/align_view.dart';
import '../views/single_child_layouts/transform_view.dart';
import '../views/multi_child_layouts/list_view_view.dart';
import '../views/multi_child_layouts/grid_view_view.dart';
import '../views/multi_child_layouts/indexed_stack_view.dart';
import '../views/multi_child_layouts/stack_view.dart';
import '../views/multi_child_layouts/layout_builder_view.dart';
import '../views/multi_child_layouts/wrap_view.dart';
import '../views/multi_child_layouts/table_view.dart';
import '../views/inputs/text_field_view.dart';
import '../views/inputs/auto_complete_view.dart';
import '../views/inputs/form_view.dart';

class HomeViewModel {
  static const String gitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String basicSourceFile = 'lib/views/basics/';
  static const String buttonsSourceFile = 'lib/views/buttons/';
  static const String singleLayoutsSourceFile = 'lib/views/single_child_layouts/';
  static const String multiLayoutsSourceFile = 'lib/views/multi_child_layouts/';
  static const String inputsSourceFile = 'lib/views/inputs/';



  static Map<String, dynamic> getInputsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$inputsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

  List<Map<String, dynamic>> inputsWidgets = [
    getInputsMap(const TextFieldView(), 'Text Field', 'text_field_view.dart'),
    getInputsMap(const AutoCompleteView(), 'Auto Complete', 'auto_complete_view.dart'),
    getInputsMap(const FormView(), 'Form', 'form_view.dart'),
  ];

  List<String> allWidgetsList = [
    'Scaffold',
    'Text',
    'AppBar',
    'Container',
    'Column',
    'Row',
    'Icons',
    'Images',
    'Flutter Logo',
    'Elevated Button',
    'Text Button',
    'Outlined Button',
    'Icon Button',
    'Floating Action Button',
    'Material Button',
    'Dropdown Button',
    'Popup Menu Button',
    'Center',
    'Constrained Box',
    'Aspect Ratio',
    'Fitted Box',
    'Expanded',
    'Padding',
    'Sized Box',
    'Align',
    'Transform',
    'List View',
    'Grid View',
    'Indexed Stack',
    'Stack',
    'Layout Builder',
    'Wrap',
    'Table',
    'Text Field',
    'Auto Complete',
    'Form',
  ];


  static Map<String, dynamic> getBasicsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$basicSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

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

  static Map<String, dynamic> getSingleLayoutsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$singleLayoutsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

  List<Map<String, dynamic>> singleLayoutWidgets = [
    getSingleLayoutsMap(const CenterView(), 'Center', 'center_view.dart'),
    getSingleLayoutsMap(const ConstrainedBoxView(), 'Constrained Box', 'constrained_box_view.dart'),
    getSingleLayoutsMap(const AspectRatioView(), 'Aspect Ratio', 'aspect_ratio_view.dart'),
    getSingleLayoutsMap(const FittedBoxView(), 'Fitted Box', 'fitted_box_view.dart'),
    getSingleLayoutsMap(const ExpandedView(), 'Expanded', 'expanded_view.dart'),
    getSingleLayoutsMap(const PaddingView(), 'Padding', 'padding_view.dart'),
    getSingleLayoutsMap(const SizedBoxView(), 'Sized Box', 'sized_box_view.dart'),
    getSingleLayoutsMap(const AlignView(), 'Align', 'align_view.dart'),
    getSingleLayoutsMap(const TransformView(), 'Transform', 'transform_view.dart'),
  ];


  static Map<String, dynamic> getMultiLayoutsMap(Widget child, String title, String fileName) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$multiLayoutsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
    };
  }

  List<Map<String, dynamic>> multiLayoutWidgets = [
    getMultiLayoutsMap(const ListViewView(), 'List View', 'list_view_view.dart'),
    getMultiLayoutsMap(const GridViewView(), 'Grid View', 'grid_view_view.dart'),
    getMultiLayoutsMap(const IndexedStackView(), 'Indexed Stack', 'indexed_stack_view.dart'),
    getMultiLayoutsMap(const StackView(), 'Stack', 'stack_view.dart'),
    getMultiLayoutsMap(const LayoutBuilderView(), 'Layout Builder', 'layout_builder_view.dart'),
    getMultiLayoutsMap(const WrapView(), 'Wrap', 'wrap_view.dart'),
    getMultiLayoutsMap(const TableView(), 'Table', 'table_view.dart'),
  ];



}
