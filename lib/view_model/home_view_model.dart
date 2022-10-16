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
import '../views/inputs/expansion_tile_view.dart';
import '../views/touch_interactions/dismissible_view.dart';
import '../views/touch_interactions/draggable_view.dart';
import '../views/touch_interactions/draggable_scrollable_sheet_view.dart';
import '../views/touch_interactions/gesture_detector_view.dart';
import '../views/touch_interactions/ignore_pointer_view.dart';
import '../views/touch_interactions/interactive_viewer_view.dart';
import '../views/routing/navigator_view.dart';
import '../views/routing/hero_view.dart';
import '../views/scrolling/re_orderable_list_view_view.dart';
import '../views/scrolling/refresh_indicator_view.dart';
import '../views/scrolling/page_view_view.dart';
import '../views/scrolling/scrollbar_view.dart';
import '../views/painting/backdrop_filter_view.dart';
import '../views/painting/clip_oval_view.dart';
import '../views/painting/clip_rect_view.dart';
import '../views/painting/decorated_box_view.dart';
import '../views/painting/fractional_translation_view.dart';
import '../views/painting/opacity_view.dart';
import '../views/painting/rotated_box_view.dart';
import '../views/animation/animated_align_view.dart';
import '../views/animation/animated_container_view.dart';
import '../views/animation/animated_cross_fade_view.dart';
import '../views/animation/animated_default_text_style_view.dart';
import '../views/animation/animated_list_view.dart';
import '../views/animation/animated_opacity_view.dart';
import '../views/animation/animated_physical_model_view.dart';
import '../views/animation/animated_positioned_view.dart';

class HomeViewModel {
  static const String gitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String basicSourceFile = 'lib/views/basics/';
  static const String buttonsSourceFile = 'lib/views/buttons/';
  static const String singleLayoutsSourceFile = 'lib/views/single_child_layouts/';
  static const String multiLayoutsSourceFile = 'lib/views/multi_child_layouts/';
  static const String inputsSourceFile = 'lib/views/inputs/';
  static const String interactionsSourceFile = 'lib/views/touch_interactions/';
  static const String routingSourceFile = 'lib/views/routing/';
  static const String scrollingSourceFile = 'lib/views/scrolling/';
  static const String paintingSourceFile = 'lib/views/painting/';
  static const String animationSourceFile = 'lib/views/animation/';

  static Map<String, dynamic> getAnimationMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$animationSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> animationWidgets = [
    getAnimationMap(const AnimatedAlignView(), 'Animated Align', 'animated_align_view.dart', null),
    getAnimationMap(const AnimatedContainerView(), 'Animated Container', 'animated_container_view.dart', 'https://www.youtube.com/watch?v=yI-8QHpGIP4'),
    getAnimationMap(const AnimatedCrossFadeView(), 'Animated Cross Fade', 'animated_cross_fade_view.dart', 'https://www.youtube.com/watch?v=PGK2UUAyE54'),
    getAnimationMap(const AnimatedDefaultTextStyleView(), 'Animated Default Text Style', 'animated_default_text_style_view.dart', null),
    getAnimationMap(const AnimatedListView(), 'Animated List', 'animated_list_view.dart', 'https://www.youtube.com/watch?v=ZtfItHwFlZ8'),
    getAnimationMap(const AnimatedOpacityView(), 'Animated Opacity', 'animated_opacity_view.dart', 'https://www.youtube.com/watch?v=QZAvjqOqiLY'),
    getAnimationMap(const AnimatedPhysicalModelView(), 'Animated Physical Model', 'animated_physical_model_view.dart', null),
    getAnimationMap(const AnimatedPositionedView(), 'Animated Positioned', 'animated_positioned_view.dart', 'https://www.youtube.com/watch?v=hC3s2YdtWt8'),
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
    'Expansion Tile',
    'Dismissible',
    'Draggable',
    'Draggable Scrollable Sheet',
    'Gesture Detector',
    'Ignore Pointer',
    'Interactive Viewer',
    'Navigator',
    'Hero',
    'Reorderable List View',
    'Refresh Indicator',
    'Page View',
    'Scrollbar',
    'Backdrop Filter',
    'Clip Oval',
    'Clip Rect',
    'Decorated Box',
    'Fractional Translation',
    'Opacity',
    'Rotated Box',
    'Animated Align',
    'Animated Container',
    'Animated Cross Fade',
    'Animated Default Text Style',
    'Animated List',
    'Animated Opacity',
    'Animated Physical Model',
    'Animated Positioned',
  ];

  static Map<String, dynamic> getBasicsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$basicSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> basicsWidgets = [
    getBasicsMap(const ScaffoldView(), 'Scaffold', 'scaffold_view.dart', null),
    getBasicsMap(const TextView(), 'Text', 'text_view.dart', null),
    getBasicsMap(const AppBarView(), 'AppBar', 'appbar_view.dart', null),
    getBasicsMap(const ContainerView(), 'Container', 'container_view.dart', null),
    getBasicsMap(const ColumnView(), 'Column', 'column_view.dart', null),
    getBasicsMap(const RowView(), 'Row', 'row_view.dart', null),
    getBasicsMap(const IconsView(), 'Icons', 'icons_view.dart', null),
    getBasicsMap(const ImagesView(), 'Images', 'images_view.dart', null),
    getBasicsMap(const FlutterLogoView(), 'Flutter Logo', 'flutter_logo_view.dart', null),
  ];

  static Map<String, dynamic> getButtonsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$buttonsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> buttonsWidgets = [
    getButtonsMap(const ElevatedButtonView(), 'Elevated Button', 'elevated_button_view.dart', null),
    getButtonsMap(const TextButtonView(), 'Text Button', 'text_button_view.dart', null),
    getButtonsMap(const OutlinedButtonView(), 'Outlined Button', 'outlined_button_view.dart', null),
    getButtonsMap(const IconButtonView(), 'Icon Button', 'icon_button_view.dart', null),
    getButtonsMap(const FloatingActionButtonView(), 'Floating Action Button', 'floating_action_button_view.dart', null),
    getButtonsMap(const MaterialButtonView(), 'Material Button', 'material_button_view.dart', null),
    getButtonsMap(const DropdownButtonView(), 'Dropdown Button', 'dropdown_button_view.dart', null),
    getButtonsMap(const PopupMenuButtonView(), 'Popup Menu Button', 'popup_menu_button_view.dart', null),
  ];

  static Map<String, dynamic> getSingleLayoutsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$singleLayoutsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> singleLayoutWidgets = [
    getSingleLayoutsMap(const CenterView(), 'Center', 'center_view.dart', null),
    getSingleLayoutsMap(const ConstrainedBoxView(), 'Constrained Box', 'constrained_box_view.dart', null),
    getSingleLayoutsMap(const AspectRatioView(), 'Aspect Ratio', 'aspect_ratio_view.dart', null),
    getSingleLayoutsMap(const FittedBoxView(), 'Fitted Box', 'fitted_box_view.dart', null),
    getSingleLayoutsMap(const ExpandedView(), 'Expanded', 'expanded_view.dart', null),
    getSingleLayoutsMap(const PaddingView(), 'Padding', 'padding_view.dart', null),
    getSingleLayoutsMap(const SizedBoxView(), 'Sized Box', 'sized_box_view.dart', null),
    getSingleLayoutsMap(const AlignView(), 'Align', 'align_view.dart', null),
    getSingleLayoutsMap(const TransformView(), 'Transform', 'transform_view.dart', 'https://www.youtube.com/watch?v=9z_YNlRlWfA'),
  ];

  static Map<String, dynamic> getMultiLayoutsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$multiLayoutsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> multiLayoutWidgets = [
    getMultiLayoutsMap(const ListViewView(), 'List View', 'list_view_view.dart', null),
    getMultiLayoutsMap(const GridViewView(), 'Grid View', 'grid_view_view.dart', null),
    getMultiLayoutsMap(const IndexedStackView(), 'Indexed Stack', 'indexed_stack_view.dart', null),
    getMultiLayoutsMap(const StackView(), 'Stack', 'stack_view.dart', null),
    getMultiLayoutsMap(const LayoutBuilderView(), 'Layout Builder', 'layout_builder_view.dart', null),
    getMultiLayoutsMap(const WrapView(), 'Wrap', 'wrap_view.dart', null),
    getMultiLayoutsMap(const TableView(), 'Table', 'table_view.dart', null),
  ];

  static Map<String, dynamic> getInputsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$inputsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> inputsWidgets = [
    getInputsMap(const TextFieldView(), 'Text Field', 'text_field_view.dart', null),
    getInputsMap(const AutoCompleteView(), 'Auto Complete', 'auto_complete_view.dart', 'https://www.youtube.com/watch?v=-Nny8kzW380'),
    getInputsMap(const FormView(), 'Form', 'form_view.dart', null),
    getInputsMap(const ExpansionTileView(), 'Expansion Tile', 'expansion_tile_view.dart', null),
  ];

  static Map<String, dynamic> getInteractionsMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$interactionsSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> interactionWidgets = [
    getInteractionsMap(const DismissibleView(), 'Dismissible', 'dismissible_view.dart', 'https://www.youtube.com/watch?v=iEMgjrfuc58'),
    getInteractionsMap(const DraggableView(), 'Draggable', 'draggable_view.dart', 'https://www.youtube.com/watch?v=QzA4c4QHZCY'),
    getInteractionsMap(const DraggableScrollableSheetView(), 'Draggable Scrollable Sheet', 'draggable_scrollable_sheet_view.dart', 'https://www.youtube.com/watch?v=Hgw819mL_78'),
    getInteractionsMap(const GestureDetectorView(), 'Gesture Detector', 'gesture_detector_view.dart', 'https://www.youtube.com/watch?v=WhVXkCFPmK4'),
    getInteractionsMap(const IgnorePointerView(), 'Ignore Pointer', 'ignore_pointer_view.dart', 'https://www.youtube.com/watch?v=qV9pqHWxYgI'),
    getInteractionsMap(const InteractiveViewerView(), 'Interactive Viewer', 'interactive_viewer_view.dart', 'https://www.youtube.com/watch?v=zrn7V3bMJvg'),
  ];

  static Map<String, dynamic> getRoutingMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$routingSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> routingWidgets = [
    getRoutingMap(const NavigatorView(), 'Navigator', 'navigator_view.dart', null),
    getRoutingMap(const HeroView(), 'Hero', 'hero_view.dart', 'https://www.youtube.com/watch?v=Be9UH1kXFDw'),
  ];

  static Map<String, dynamic> getScrollingMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$scrollingSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> scrollingWidgets = [
    getScrollingMap(const ReorderableListViewView(), 'Re-orderable List View', 're_orderable_list_view_view.dart', 'https://www.youtube.com/watch?v=3fB1mxOsqJE'),
    getScrollingMap(const RefreshIndicatorView(), 'Refresh Indicator', 'refresh_indicator_view.dart', 'https://www.youtube.com/watch?v=ORApMlzwMdM'),
    getScrollingMap(const PageViewView(), 'Page View', 'page_view_view.dart', 'https://www.youtube.com/watch?v=J1gE9xvph-A'),
    getScrollingMap(const ScrollbarView(), 'Scrollbar', 'scrollbar_view.dart', 'https://www.youtube.com/watch?v=DbkIQSvwnZc'),
  ];

  static Map<String, dynamic> getPaintingMap(Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$paintingSourceFile$fileName',
      'codeLinkPrefix': gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  List<Map<String, dynamic>> paintingWidgets = [
    getPaintingMap(const BackdropFilterView(), 'Backdrop Filter', 'backdrop_filter_view.dart', 'https://www.youtube.com/watch?v=dYRs7Q1vfYI'),
    getPaintingMap(const ClipOvalView(), 'Clip Oval', 'clip_oval_view.dart', 'https://www.youtube.com/watch?v=vzWWDO6whIM'),
    getPaintingMap(const ClipRectView(), 'Clip Rect', 'clip_rect_view.dart', null),
    getPaintingMap(const DecoratedBoxView(), 'Decorated Box', 'decorated_box_view.dart', null),
    getPaintingMap(const FractionalTranslationView(), 'Fractional Translation', 'fractional_translation_view.dart', null),
    getPaintingMap(const OpacityView(), 'Opacity', 'opacity_view.dart', 'https://www.youtube.com/watch?v=9hltevOHQBw'),
    getPaintingMap(const RotatedBoxView(), 'Rotated Box', 'rotated_box_view.dart', 'https://www.youtube.com/watch?v=BFE6_UglLfQ'),
  ];

}
