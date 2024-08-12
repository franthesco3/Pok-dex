import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pages/home.page.dart';
import 'package:pokedex/presentation/pages/detail_page.dart';
import 'package:pokedex/presentation/pages/splash_screen_page.dart';

class MobileRouter {
  static const String initialRoute = '/splash';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/splash': (_) {
      return const SplashScreenPage();
    },
    '/home': (_) {
      return HomePage();
    },
    '/detail': (_) {
      return const DetailPage();
    },
  };
}
