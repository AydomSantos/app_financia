import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../rotas/rotas.dart';

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'spend smarter\nsave more',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF438883),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Navegar para a próxima tela
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.greenLightTwo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have account ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF444444),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          // Navegar para a tela de login
                        },
                        child: const Text(
                          'sign in',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF438883),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
