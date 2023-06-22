import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/resources/colors_manager.dart';

import 'resources/theme_manager.dart';
import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Catalog',
      color: ColorsManager.primary,
      theme: ThemeManager.lightTheme(),
      home: HomeView(),
    );
  }
}
