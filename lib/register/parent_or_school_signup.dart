import 'package:flutter/material.dart';
import 'package:stackjunior/login.dart';
import 'package:stackjunior/register/my_radio_button.dart';
import 'package:stackjunior/register/parent_register.dart';
import 'package:stackjunior/register/school_register.dart';

class ParentSchoolSignUp extends StatefulWidget {
  const ParentSchoolSignUp({Key? key}) : super(key: key);

  @override
  State<ParentSchoolSignUp> createState() => _ParentSchoolSignUpState();
}

class _ParentSchoolSignUpState extends State<ParentSchoolSignUp> {
  RegisterTypeEnum? _registerTypeEnum;

  void handleNextButton() {
    if (_registerTypeEnum == RegisterTypeEnum.Parent) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ParentRegister(),
        ),
      );
    } else if (_registerTypeEnum == RegisterTypeEnum.School) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SchoolRegister(),
        ),
      );
    }
  }

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
        title: const Text('BACK'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/register.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'Are You A Parent or School',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 39, 100),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: _buildBlueText(
                'I am registering as a....',
              ),
            ),
            const SizedBox(height: 30),
            _buildRadioButton(),
            const SizedBox(height: 20),
            _buildNextButton(),
            const SizedBox(height: 20),
            _buildLogIn(),
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

  Widget _buildRadioButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Card(
              color: const Color.fromRGBO(255, 219, 160, 1.0),
              child: MyRadioButton(
                title: RegisterTypeEnum.Parent.name,
                value: RegisterTypeEnum.Parent,
                selectRegisterType: _registerTypeEnum,
                onChanged: (val) {
                  setState(() {
                    _registerTypeEnum = val;
                  });
                },
                image: 'assets/signup-parent.png',
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Card(
              color: const Color.fromRGBO(195, 195, 160, 1.0),
              child: MyRadioButton(
                title: RegisterTypeEnum.School.name,
                value: RegisterTypeEnum.School,
                selectRegisterType: _registerTypeEnum,
                onChanged: (val) {
                  setState(() {
                    _registerTypeEnum = val;
                  });
                },
                image: 'assets/signup-school.png',
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildNextButton() {
    return Center(
      child: SizedBox(
        width: 300,
        child: ElevatedButton(
          onPressed: handleNextButton,
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
              SizedBox(width: 150),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogIn() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
