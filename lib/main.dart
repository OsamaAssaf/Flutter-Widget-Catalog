import 'package:flutter/material.dart';
import 'res/colors.dart';
import 'view_model/home_view_provider.dart';
import 'package:provider/provider.dart';

import 'views/home_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => HomeViewProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      /// TODO: these comment for future updates:
      // themeMode: Provider.of<HomeViewProvider>(context).isDark == null
      //     ? ThemeMode.system
      //     : Provider.of<HomeViewProvider>(context).isDark == true
      //         ? ThemeMode.dark
      //         : ThemeMode.light,
      // theme: ThemeData(
      //   canvasColor: CustomColors.bgDarkColor,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: CustomColors.primaryLightColor,
      //   ),
      // ),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   canvasColor: CustomColors.bgDarkColor,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: CustomColors.primaryDarkColor,
      //     secondary: CustomColors.secondaryDarkColor,
      //   ),
      //   textTheme:const TextTheme(
      //     headline1: TextStyle(
      //       color: CustomColors.textH1DarkColor,
      //       fontSize: 24.0,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 4.0,
      //     )
      //   ),
      // ),
      home: HomeView(),
    );
  }
}
