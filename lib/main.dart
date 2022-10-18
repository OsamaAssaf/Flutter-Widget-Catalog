import 'package:flutter/material.dart';
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
      theme: ThemeData(
        // canvasColor: CustomColors.bgDarkColor,
        // primarySwatch: Colors.green,
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.green,
        // ).copyWith(
        //   secondary: Colors.yellow,
        // ),
      ),
      home: HomeView(),
    );
  }
}
