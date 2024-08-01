import 'resources/all_imports.dart';

late PackageInfo packageInfo;
late AppLocalizations localizations;
late ThemeData theme;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  packageInfo = await PackageInfo.fromPlatform();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) {
        localizations = AppLocalizations.of(context)!;
        return 'Flutter Widget Catalog';
      },
      color: ColorsManager.primary,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeManager.lightTheme(),
      home: ChangeNotifierProvider(
        create: (_) => HomeViewModel(),
        child: const HomeView(),
      ),
      builder: (BuildContext context, Widget? child) {
        theme = Theme.of(context);
        return child!;
      },
    );
  }
}
