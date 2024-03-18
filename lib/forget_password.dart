import 'package:flutter/material.dart';
import 'package:stackjunior/register/signup_country.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
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
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/forgetPassword.png',
              width: 700,
            ),
            _buildBlueText('Reset Your Password'),
            const SizedBox(height: 30),
            _buildInputField(emailController),
            const SizedBox(height: 20),
            _buildSubmitButton(),
            const SizedBox(height: 30),
            _buildSignUp(),
          ],
        ),
      ),
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
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBlueText('Email'),
          const SizedBox(height: 10),
          SizedBox(
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                suffixIcon: const Icon(Icons.done),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Center(
      child: SizedBox(
        width: 300,
        child: ElevatedButton(
          onPressed: () {},
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
                'SUBMIT',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignUp() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBlueText('Don\'t have account?'),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const CountrySignUp()), // Navigate to Signup screen
              );
            },
            child: _buildGreenForTextButton('SignUp Now'),
          ),
        ],
      ),
    );
  }
}
