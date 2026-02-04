import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.greenLightTwo,
              AppColors.greenLightOne,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'Financia',
            style: AppTextStyle.splashTitle,
          ),
        ),
        
      ),
    );
  }
}