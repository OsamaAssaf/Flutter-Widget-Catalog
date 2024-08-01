import '../resources/all_imports.dart';
import '../views/routing/navigator_view.dart';

class HomeViewModel with ChangeNotifier {
  BannerAd? bannerAd;

  Future<void> loadBannerAd() async {
    bannerAd = BannerAd(
      adUnitId: ConstantsManager.homeBannerAdIdAndroid,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          ad.dispose();
        },
      ),
    );
    await bannerAd!.load();
    notifyListeners();
  }

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
  static const String transitionSourceFile = 'lib/views/transition/';

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
    'Animated Size',
    'Decorated Box Transition',
    'Fade Transition',
    'Positioned Transition',
    'Rotation Transition',
    'Scale Transition',
    'Size Transition',
    'Slide Transition',
  ];

  static WidgetModel getWidgetModel(
      Widget child, String title, String fileName, String? videoUrl, String sourceFolder) {
    return WidgetModel(
      child: child,
      title: title,
      sourceFilePath: '$sourceFolder$fileName',
      videoUrl: videoUrl,
    );
  }

  static List<WidgetModel> basicsWidgets = [
    getWidgetModel(const ScaffoldView(), 'Scaffold', 'scaffold_view.dart', null, basicSourceFile),
    getWidgetModel(const TextView(), 'Text', 'text_view.dart', null, basicSourceFile),
    getWidgetModel(const AppBarView(), 'AppBar', 'appbar_view.dart', null, basicSourceFile),
    getWidgetModel(
        const ContainerView(), 'Container', 'container_view.dart', null, basicSourceFile),
    getWidgetModel(const ColumnView(), 'Column', 'column_view.dart', null, basicSourceFile),
    getWidgetModel(const RowView(), 'Row', 'row_view.dart', null, basicSourceFile),
    getWidgetModel(const IconsView(), 'Icons', 'icons_view.dart', null, basicSourceFile),
    getWidgetModel(const ImagesView(), 'Images', 'images_view.dart', null, basicSourceFile),
    getWidgetModel(
        const FlutterLogoView(), 'Flutter Logo', 'flutter_logo_view.dart', null, basicSourceFile),
  ];
  static List<WidgetModel> buttonsWidgets = [
    getWidgetModel(const ElevatedButtonView(), 'Elevated Button', 'elevated_button_view.dart', null,
        buttonsSourceFile),
    getWidgetModel(
        const TextButtonView(), 'Text Button', 'text_button_view.dart', null, buttonsSourceFile),
    getWidgetModel(const OutlinedButtonView(), 'Outlined Button', 'outlined_button_view.dart', null,
        buttonsSourceFile),
    getWidgetModel(
        const IconButtonView(), 'Icon Button', 'icon_button_view.dart', null, buttonsSourceFile),
    getWidgetModel(const FloatingActionButtonView(), 'Floating Action Button',
        'floating_action_button_view.dart', null, buttonsSourceFile),
    getWidgetModel(const MaterialButtonView(), 'Material Button', 'material_button_view.dart', null,
        buttonsSourceFile),
    getWidgetModel(const DropdownButtonView(), 'Dropdown Button', 'dropdown_button_view.dart', null,
        buttonsSourceFile),
    getWidgetModel(const PopupMenuButtonView(), 'Popup Menu Button', 'popup_menu_button_view.dart',
        null, buttonsSourceFile),
  ];
  static List<WidgetModel> singleLayoutWidgets = [
    getWidgetModel(const CenterView(), 'Center', 'center_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(const ConstrainedBoxView(), 'Constrained Box', 'constrained_box_view.dart', null,
        singleLayoutsSourceFile),
    getWidgetModel(const AspectRatioView(), 'Aspect Ratio', 'aspect_ratio_view.dart', null,
        singleLayoutsSourceFile),
    getWidgetModel(
        const FittedBoxView(), 'Fitted Box', 'fitted_box_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(
        const ExpandedView(), 'Expanded', 'expanded_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(
        const PaddingView(), 'Padding', 'padding_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(
        const SizedBoxView(), 'Sized Box', 'sized_box_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(const AlignView(), 'Align', 'align_view.dart', null, singleLayoutsSourceFile),
    getWidgetModel(const TransformView(), 'Transform', 'transform_view.dart',
        'https://www.youtube.com/watch?v=9z_YNlRlWfA', singleLayoutsSourceFile),
  ];
  static List<WidgetModel> multiLayoutWidgets = [
    getWidgetModel(
        const ListViewView(), 'List View', 'list_view_view.dart', null, multiLayoutsSourceFile),
    getWidgetModel(
        const GridViewView(), 'Grid View', 'grid_view_view.dart', null, multiLayoutsSourceFile),
    getWidgetModel(const IndexedStackView(), 'Indexed Stack', 'indexed_stack_view.dart', null,
        multiLayoutsSourceFile),
    getWidgetModel(const StackView(), 'Stack', 'stack_view.dart', null, multiLayoutsSourceFile),
    getWidgetModel(const LayoutBuilderView(), 'Layout Builder', 'layout_builder_view.dart', null,
        multiLayoutsSourceFile),
    getWidgetModel(const WrapView(), 'Wrap', 'wrap_view.dart', null, multiLayoutsSourceFile),
    getWidgetModel(const TableView(), 'Table', 'table_view.dart', null, multiLayoutsSourceFile),
  ];
  static List<WidgetModel> inputsWidgets = [
    getWidgetModel(
        const TextFieldView(), 'Text Field', 'text_field_view.dart', null, inputsSourceFile),
    getWidgetModel(const AutoCompleteView(), 'Auto Complete', 'auto_complete_view.dart',
        'https://www.youtube.com/watch?v=-Nny8kzW380', inputsSourceFile),
    getWidgetModel(const FormView(), 'Form', 'form_view.dart', null, inputsSourceFile),
    getWidgetModel(const ExpansionTileView(), 'Expansion Tile', 'expansion_tile_view.dart', null,
        inputsSourceFile),
  ];
  static List<WidgetModel> interactionWidgets = [
    getWidgetModel(const DismissibleView(), 'Dismissible', 'dismissible_view.dart',
        'https://www.youtube.com/watch?v=iEMgjrfuc58', interactionsSourceFile),
    getWidgetModel(const DraggableView(), 'Draggable', 'draggable_view.dart',
        'https://www.youtube.com/watch?v=QzA4c4QHZCY', interactionsSourceFile),
    getWidgetModel(
        const DraggableScrollableSheetView(),
        'Draggable Scrollable Sheet',
        'draggable_scrollable_sheet_view.dart',
        'https://www.youtube.com/watch?v=Hgw819mL_78',
        interactionsSourceFile),
    getWidgetModel(const GestureDetectorView(), 'Gesture Detector', 'gesture_detector_view.dart',
        'https://www.youtube.com/watch?v=WhVXkCFPmK4', interactionsSourceFile),
    getWidgetModel(const IgnorePointerView(), 'Ignore Pointer', 'ignore_pointer_view.dart',
        'https://www.youtube.com/watch?v=qV9pqHWxYgI', interactionsSourceFile),
    getWidgetModel(
        const InteractiveViewerView(),
        'Interactive Viewer',
        'interactive_viewer_view.dart',
        'https://www.youtube.com/watch?v=zrn7V3bMJvg',
        interactionsSourceFile),
  ];
  static List<WidgetModel> routingWidgets = [
    getWidgetModel(
        const NavigatorView(), 'Navigator', 'navigator_view.dart', null, routingSourceFile),
    getWidgetModel(const HeroView(), 'Hero', 'hero_view.dart',
        'https://www.youtube.com/watch?v=Be9UH1kXFDw', routingSourceFile),
  ];
  static List<WidgetModel> scrollingWidgets = [
    getWidgetModel(
        const ReorderableListViewView(),
        'Re-orderable List View',
        're_orderable_list_view_view.dart',
        'https://www.youtube.com/watch?v=3fB1mxOsqJE',
        scrollingSourceFile),
    getWidgetModel(const RefreshIndicatorView(), 'Refresh Indicator', 'refresh_indicator_view.dart',
        'https://www.youtube.com/watch?v=ORApMlzwMdM', scrollingSourceFile),
    getWidgetModel(const PageViewView(), 'Page View', 'page_view_view.dart',
        'https://www.youtube.com/watch?v=J1gE9xvph-A', scrollingSourceFile),
    getWidgetModel(const ScrollbarView(), 'Scrollbar', 'scrollbar_view.dart',
        'https://www.youtube.com/watch?v=DbkIQSvwnZc', scrollingSourceFile),
  ];
  static List<WidgetModel> paintingWidgets = [
    getWidgetModel(const BackdropFilterView(), 'Backdrop Filter', 'backdrop_filter_view.dart',
        'https://www.youtube.com/watch?v=dYRs7Q1vfYI', paintingSourceFile),
    getWidgetModel(const ClipOvalView(), 'Clip Oval', 'clip_oval_view.dart',
        'https://www.youtube.com/watch?v=vzWWDO6whIM', paintingSourceFile),
    getWidgetModel(
        const ClipRectView(), 'Clip Rect', 'clip_rect_view.dart', null, paintingSourceFile),
    getWidgetModel(const DecoratedBoxView(), 'Decorated Box', 'decorated_box_view.dart', null,
        paintingSourceFile),
    getWidgetModel(const FractionalTranslationView(), 'Fractional Translation',
        'fractional_translation_view.dart', null, paintingSourceFile),
    getWidgetModel(const OpacityView(), 'Opacity', 'opacity_view.dart',
        'https://www.youtube.com/watch?v=9hltevOHQBw', paintingSourceFile),
    getWidgetModel(const RotatedBoxView(), 'Rotated Box', 'rotated_box_view.dart',
        'https://www.youtube.com/watch?v=BFE6_UglLfQ', paintingSourceFile),
  ];
  static List<WidgetModel> animationWidgets = [
    getWidgetModel(const AnimatedAlignView(), 'Animated Align', 'animated_align_view.dart', null,
        animationSourceFile),
    getWidgetModel(
        const AnimatedContainerView(),
        'Animated Container',
        'animated_container_view.dart',
        'https://www.youtube.com/watch?v=yI-8QHpGIP4',
        animationSourceFile),
    getWidgetModel(
        const AnimatedCrossFadeView(),
        'Animated Cross Fade',
        'animated_cross_fade_view.dart',
        'https://www.youtube.com/watch?v=PGK2UUAyE54',
        animationSourceFile),
    getWidgetModel(const AnimatedDefaultTextStyleView(), 'Animated Default Text Style',
        'animated_default_text_style_view.dart', null, animationSourceFile),
    getWidgetModel(const AnimatedListView(), 'Animated List', 'animated_list_view.dart',
        'https://www.youtube.com/watch?v=ZtfItHwFlZ8', animationSourceFile),
    getWidgetModel(const AnimatedOpacityView(), 'Animated Opacity', 'animated_opacity_view.dart',
        'https://www.youtube.com/watch?v=QZAvjqOqiLY', animationSourceFile),
    getWidgetModel(const AnimatedPhysicalModelView(), 'Animated Physical Model',
        'animated_physical_model_view.dart', null, animationSourceFile),
    getWidgetModel(
        const AnimatedPositionedView(),
        'Animated Positioned',
        'animated_positioned_view.dart',
        'https://www.youtube.com/watch?v=hC3s2YdtWt8',
        animationSourceFile),
    getWidgetModel(const AnimatedSizeView(), 'Animated Size', 'animated_size_view.dart', null,
        animationSourceFile),
  ];

  static Map<String, dynamic> getTransitionsMap(
      Widget child, String title, String fileName, String? videoUrl) {
    return {
      'child': child,
      'title': title,
      'sourceFilePath': '$transitionSourceFile$fileName',
      'codeLinkPrefix': ConstantsManager.gitHubPath,
      'videoUrl': videoUrl,
    };
  }

  static List<WidgetModel> transitionsWidgets = [
    getWidgetModel(const DecoratedBoxTransitionView(), 'Decorated Box Transition',
        'decorated_box_transition_view.dart', null, transitionSourceFile),
    getWidgetModel(const FadeTransitionView(), 'Fade Transition', 'fade_transition_view.dart',
        'https://www.youtube.com/watch?v=rLwWVbv3xDQ', transitionSourceFile),
    getWidgetModel(const PositionedTransitionView(), 'Positioned Transition',
        'positioned_transition_view.dart', null, transitionSourceFile),
    getWidgetModel(const RotationTransitionView(), 'Rotation Transition',
        'rotation_transition_view.dart', null, transitionSourceFile),
    getWidgetModel(const ScaleTransitionView(), 'Scale Transition', 'scale_transition_view.dart',
        null, transitionSourceFile),
    getWidgetModel(const SizeTransitionView(), 'Size Transition', 'size_transition_view.dart', null,
        transitionSourceFile),
    getWidgetModel(const SlideTransitionView(), 'Slide Transition', 'slide_transition_view.dart',
        null, transitionSourceFile),
  ];

  List<ExpansionModel> homeExpansionTiles = [
    ExpansionModel(
      title: 'Basics',
      subtitle: 'Widgets you absolutely need to know before building your first Flutter app.',
      widgets: basicsWidgets,
    ),
    ExpansionModel(
      title: 'Buttons',
      subtitle: 'Clickable widgets.',
      widgets: buttonsWidgets,
    ),
    ExpansionModel(
      title: 'Single-child layout widgets',
      subtitle: 'Arrange other widgets columns, rows, grids, and many other single_child_layouts.',
      widgets: singleLayoutWidgets,
    ),
    ExpansionModel(
      title: 'Multi-child layout widgets',
      subtitle: 'Arrange other widgets columns, rows, grids, and many other single_child_layouts.',
      widgets: multiLayoutWidgets,
    ),
    ExpansionModel(
      title: 'Input widgets',
      subtitle:
          'Take user input in addition to input widgets in Material Components and Cupertino.',
      widgets: inputsWidgets,
    ),
    ExpansionModel(
      title: 'Touch interactions',
      subtitle: 'Respond to touch events.',
      widgets: interactionWidgets,
    ),
    ExpansionModel(
      title: 'Routing',
      subtitle: 'Route users to different views.',
      widgets: routingWidgets,
    ),
    ExpansionModel(
      title: 'Scrolling widgets',
      subtitle: 'Scroll multiple widgets as children of the parent.',
      widgets: scrollingWidgets,
    ),
    ExpansionModel(
      title: 'Painting and effect widgets',
      subtitle:
          'These widgets apply visual effects to the children without changing their layout, size, or position.',
      widgets: paintingWidgets,
    ),
    ExpansionModel(
      title: 'Animation and motion widgets',
      subtitle: 'Bring animations to your app.',
      widgets: animationWidgets,
    ),
    ExpansionModel(
      title: 'Transitions widgets',
      subtitle: 'Bring transitions to your app.',
      widgets: transitionsWidgets,
    ),
  ];
}
