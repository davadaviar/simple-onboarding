import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Lottie.asset('assets/animations/service-animation.json'),
        ),
      ),
    );
  }
}
