import 'package:flutter/material.dart';
import '../features/splash/splash_page.dart';
import '../features/onboarding/onboarding_page.dart';


class Rotas {
  static const String home = '/';
  static const String onboarding = '/onboarding';
  

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const SplashPage(),
      onboarding: (context) => const OnboardingPage(),
    };
  }

}