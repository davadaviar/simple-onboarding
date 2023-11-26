import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_onboarding/shared/themes.dart';
import 'package:simple_onboarding/widgets/custom_buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  List<String> title = [
    'Find your destination...',
    'Serve with heart & love...',
    'Feel the new journey...'
  ];

  List<String> subtitle = [
    'Provide 200+ destinations for your\nvacation around the world.',
    'Serve with the best 24/7 service for you\nduring your vacation.',
    'Feel a lot comfortable places for your\nvacation experience.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Lottie.asset(
                      'assets/animations/animation-destination.json',
                      height: 250,
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Lottie.asset(
                      'assets/animations/animation-service.json',
                      height: 250,
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Lottie.asset(
                      'assets/animations/animation-place.json',
                      height: 250,
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: 250,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                carouselController: _carouselController,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(
                      title[currentIndex],
                      style: titleTextStyle.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      subtitle[currentIndex],
                      style: TextStyle(
                          color: bodyColor, fontSize: 16, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: currentIndex == 0
                                      ? primaryColor
                                      : neutralColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: currentIndex == 1
                                      ? primaryColor
                                      : neutralColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: currentIndex == 2
                                      ? primaryColor
                                      : neutralColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomFilledButton(
                          title: currentIndex == 2 ? 'Get Started' : 'Next',
                          width: currentIndex == 2 ? 130 : 100,
                          onPressed: () {
                            _carouselController.nextPage();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
