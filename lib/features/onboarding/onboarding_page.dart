import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagem
          Expanded(
            flex: 2,
            child: Container(
              color: AppColors.iceWhite,
              width: double.infinity,
              child: Center(
                child: Image.asset(
                  'assets/images/Onboarding_img.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Texto
          Expanded(
            child: Container(
              color: AppColors.white,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Bem-vindo ao Financia!\nGerencie suas finanças de forma fácil e eficiente.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      )
    ); 
  }
}