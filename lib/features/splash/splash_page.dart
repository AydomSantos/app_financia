import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_style.dart';
import 'spash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _controller = SpashController();

  @override
  void initState() {
    super.initState();
    // print("Splash iniciada"); // Debug
    Future.delayed(const Duration(seconds: 2), () {
      // print("Navegando..."); // Debug
      if (mounted) {
        _controller.navigateToOnboarding(context);
      }
    });
  }

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