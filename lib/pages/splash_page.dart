import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_onboarding/shared/themes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 180,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'TravelGo',
                      style: titleTextStyle.copyWith(
                        fontSize: 34,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                child: Text(
                  'Apps version',
                  style: TextStyle(
                    fontSize: 18,
                    color: bodyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
