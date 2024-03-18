import 'package:flutter/material.dart';
import 'package:stackjunior/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // String myColor = Color.fromRGBO(255, 199, 0, 1.0);
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
