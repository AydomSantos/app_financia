import 'package:flutter/material.dart';
import '../features/splash/splash_page.dart';
import '../features/onboarding/onboarding_page.dart';
import '../features/sign_up/sing_up_page.dart';
import '../features/login/login_page.dart';


class Rotas {
  static const String home = '/';
  static const String onboarding = '/onboarding';
  static const String singUp = '/singUp';
  static const String login = '/login';
  

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const SplashPage(),
      onboarding: (context) => const OnboardingPage(),
      singUp : (context) => const SignUpPage(),
      login : (context) => const LoginPage(),
    };
  }

}