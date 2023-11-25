import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_onboarding/shared/themes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;

  List<String> title = [
    'Find your destination...',
    'Serve with heart & love...',
    'Feel the new journey...'
  ];

  List<String> body = [
    'Provide 200+ destinations for your\nvacation around the world.',
    'Serve with the best 24/7 service for you\nduring your vacation.',
    'Feel a lot comfortable places for your\nvacation experience.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Lottie.asset('assets/animations/destination-animation.json'),
                Lottie.asset('assets/animations/service-animation.json'),
                Lottie.asset('assets/animations/place-animation.json')
              ],
              options: CarouselOptions(
                height: 250,
                viewportFraction: 1,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
