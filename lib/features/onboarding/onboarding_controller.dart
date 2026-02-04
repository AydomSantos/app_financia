import 'package:flutter/material.dart';
import '../../rotas/rotas.dart';

class OnboardingController {
  void startOnboarding(BuildContext context) {
    Navigator.pushNamed(context, Rotas.onboarding);
  }
}