import 'package:flutter/material.dart';

class OnBoardPage3 extends StatelessWidget {
  const OnBoardPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/programming.png',
          ),
          const Spacer(flex: 1),
          const Text(
            'Project-Backed Learning',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          //const Spacer(flex: 2),
          const SizedBox(height: 10),
          const Text(
            'Empowers students by emphasizing\n hands-on projects to reinforce their understanding of concepts.',
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
