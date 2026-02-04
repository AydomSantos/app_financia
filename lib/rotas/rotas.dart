import 'package:flutter/material.dart';
import '../features/splash/splash_page.dart';

class Rotas {
  static const String home = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const SplashPage(),
    };
  }

}