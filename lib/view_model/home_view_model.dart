import '../views/basics/text_view.dart';

import '../views/basics/appbar_view.dart';

class HomeViewModel {
  static const String baseGitHubPath = 'https://github.com/OsamaAssaf/Flutter-Widget-Catalog/blob/main/';
  static const String baseBasicSourceFile = 'lib/views/basics/';

  List<Map<String, dynamic>> basicsWidgets = [
    {
      'child': const AppBarView(),
      'title': 'AppBar',
      'sourceFilePath': '${baseBasicSourceFile}appbar_view.dart',
      'codeLinkPrefix': baseGitHubPath,
    },
    {
      'child': const TextView(),
      'title': 'Text',
      'sourceFilePath': '${baseBasicSourceFile}text_view.dart',
      'codeLinkPrefix': baseGitHubPath,
    },
  ];
}
