import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stackjunior/on_boarding_screen/on_boarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/stackjuniorIcons.png',
              height: 400,
              width: 1000,
            ),
          ),
          const SizedBox(height: 15),
          //Image.asset('assets/stackjuniorName.png'),
          const Text(
            'Stackjunior',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
      splashIconSize: 200,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: const Color.fromRGBO(255, 199, 0, 1),
      duration: 3000,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      nextScreen: const OnBoardingScreen(),
    );
  }
}
