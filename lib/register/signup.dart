import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  late Size mediaSize;
  bool rememberUser = false;

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.yellow,
            Color.fromRGBO(255, 199, 0, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 20, child: _buildTop()),
            Positioned(bottom: 0, child: _buildButtom()),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 700,
          ),
        ],
      ),
    );
  }

  Widget _buildButtom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome',
          style: TextStyle(
            color: Color.fromARGB(255, 3, 39, 100),
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        _buildBlueText(
          'Your journey become a software engineer...',
        ),
        const SizedBox(height: 60),
        // _buildBlueText('Email'),
        _buildInputEmail(emailController),
        const SizedBox(height: 40),
        // _buildBlueText('First Name'),
        _buildNamesInput(firstNameController),
        // _buildBlueText('Last Name'),
        _buildNamesInput(lastNameController),
        const SizedBox(height: 20),
        _buildBlueText('Password'),
        // _buildInputPassword(passwordController, isPassword: true),
        const SizedBox(height: 20),
        _buildBlueText('Confirm Password'),
        // _buildInputPassword(confirmPasswordController, isPassword: true),
        const SizedBox(height: 20),
        // _buildLoginButton(),
        // const SizedBox(height: 20),
        // _buildSignUp(),
        // const SizedBox(height: 30),
        // _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreenForTextButton(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.green, fontSize: 20),
    );
  }

  Widget _buildBlueText(String text) {
    return Text(
      text,
      style:
          const TextStyle(color: Color.fromARGB(255, 3, 39, 100), fontSize: 20),
    );
  }

  Widget _buildNamesInput(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.done),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    label: _buildBlueText('First Name'),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.done),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    label: _buildBlueText('Last Name'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInputEmail(TextEditingController emailController) {
    return TextField(
        controller: emailController,
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.done),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            label: _buildBlueText('Email')));
  }
}
