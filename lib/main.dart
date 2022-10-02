import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/core/utils/disable_scroll_glow.dart';
import 'src/core/values/colors.dart';
import 'src/features/home/presentation/pages/home_page.dart';
import 'src/features/splash/splash_page.dart';
import 'src/core/utils/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await _portrait();
  runApp(const MyApp());
}

final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: DisableScrollGlow(),
          child: ScaffoldMessenger(key: globalScaffoldKey, child: child!),
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: AppColors.yellow,
        primaryColorDark: AppColors.purple,
      ),
      routes: <String, WidgetBuilder>{
        HomePage.routeName: (ctx) => const HomePage(),
      },
      home: const SplashPage(),
    );
  }
}

/// Locks app in portrait orientation
Future<void> _portrait() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
