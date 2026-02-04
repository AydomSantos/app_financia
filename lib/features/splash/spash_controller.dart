import 'package:flutter/material.dart';
import '../../rotas/rotas.dart';

class SpashController {
  void navigateToOnboarding(BuildContext context) {
    // Usamos pushReplacementNamed para que o usuário não possa voltar para a SplashPage.
    Navigator.pushReplacementNamed(context, Rotas.onboarding);
  }
}