import 'package:flutter/material.dart';

class OnBoardPage1 extends StatelessWidget {
  const OnBoardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/teaching.png',
          ),
          const Spacer(flex: 1),
          const Text(
            'Comprehensive Tech Education',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          //const Spacer(flex: 2),
          const SizedBox(height: 10),
          const Text(
            'Equips students with the knowledge and\n skills needed to thrive in today\'s \nrapidly evolving digital landscape.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(135, 1, 1, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

//const Color.fromARGB(255, 19, 1, 52),


 // Padding(
          //   padding: const EdgeInsets.only(top: 30.0),
          //   child: Image.asset('assets/logo.png'),
          // ),
          // const Spacer(flex: 3),
          // const Padding(
          //   padding: EdgeInsets.only(bottom: 15.0),
          //   child: Text(
          //     'LEARN CODING ONLINE\n   Build Awesome Apps \n Learn from the best',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 22,
          //       fontWeight: FontWeight.w800,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          // const Text(
          //   'Register your school \nand your children on Stackjunior\n to learn coding\n Let\'s start your journey with us on this amazing and easy platform',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5),
          // ),
          // const SizedBox(height: 40),
          // AspectRatio(
          //   aspectRatio: 10 / 9,
          //   child: Lottie.asset('assets/mobile.zip', fit: BoxFit.contain),
          // ),
          // const Spacer(flex: 9),
