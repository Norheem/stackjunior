import 'package:flutter/material.dart';

class OnBoardPage2 extends StatelessWidget {
  const OnBoardPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/coding.png',
          ),
          const Spacer(flex: 1),
          const Text(
            'Gamified Video-based Learning',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          //const Spacer(flex: 2),
          const SizedBox(height: 10),
          const Text(
            'Combines engaging gameplay elements\n with educational content to make the\n learning experience more interactive and enjoyable for students.',
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
