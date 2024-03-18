import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stackjunior/login.dart';
import 'package:stackjunior/register/parent_or_school_signup.dart';

class CountrySignUp extends StatefulWidget {
  const CountrySignUp({super.key});

  @override
  State<CountrySignUp> createState() => _CountrySignUpState();
}

class _CountrySignUpState extends State<CountrySignUp> {
  TextEditingController phoneNumberController = TextEditingController();
  late Size mediaSize;
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
            Positioned(top: 250, child: _buildTop()),
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
          'Hello',
          style: TextStyle(
            color: Color.fromARGB(255, 3, 39, 100),
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        _buildBlueText(
          'To begin, we\'ll need your phone number please',
        ),
        const SizedBox(height: 60),
        _buildInputField(phoneNumberController),
        const SizedBox(height: 25),
        _buildNextButton(),
        const SizedBox(height: 30),
        _buildLogIn(),
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

  Widget _buildInputField(TextEditingController controller) {
    return IntlPhoneField(
      controller: phoneNumberController,
      //keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      initialCountryCode: 'NG',
    );
  }

  Widget _buildNextButton() {
    return Center(
      child: SizedBox(
        width: 300,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ParentSchoolSignUp()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20,
            shadowColor: Colors.black,
            minimumSize: const Size.fromHeight(60),
            backgroundColor: Colors.red, // Set the background color to red
            textStyle: const TextStyle(color: Colors.white),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NEXT',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 5),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogIn() {
    return Row(
      children: [
        _buildBlueText('Already have an account?'),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const Login()), // Navigate to Login screen
            );
          },
          child: _buildGreenForTextButton('Login Now'),
        ),
      ],
    );
  }
}
