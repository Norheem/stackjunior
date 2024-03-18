// // import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:stackjunior/forget_password.dart';
// import 'package:stackjunior/screen/home.dart';
// import 'package:stackjunior/register/signup_country.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool passwordToggle = true;

//   late Size mediaSize;
//   bool rememberUser = false;
//   final _formfield = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     mediaSize = MediaQuery.of(context).size;
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.yellow,
//             Color.fromRGBO(255, 199, 0, 1),
//           ],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Positioned(top: 20, child: _buildTop()),
//             Positioned(bottom: 0, child: _buildButtom()),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTop() {
//     return SizedBox(
//       width: mediaSize.width,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assets/logo.png',
//             width: 700,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildButtom() {
//     return SizedBox(
//       width: mediaSize.width,
//       child: Card(
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         )),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: _buildForm(),
//         ),
//       ),
//     );
//   }

//   Widget _buildForm() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Welcome',
//           style: TextStyle(
//             color: Color.fromARGB(255, 3, 39, 100),
//             fontSize: 32,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         _buildBlueText(
//           'Continue on your adventure to become a software engineer...',
//         ),
//         const SizedBox(height: 60),
//         _buildInputTextField(),
//         const SizedBox(height: 30),
//         _buildRememberForgot(),
//         const SizedBox(height: 40),
//         _buildLoginButton(),
//         const SizedBox(height: 20),
//         _buildSignUp(),
//         const SizedBox(height: 30),
//         _buildOtherLogin(),
//       ],
//     );
//   }

//   Widget _buildGreenForTextButton(String text) {
//     return Text(
//       text,
//       style: const TextStyle(color: Colors.green, fontSize: 20),
//     );
//   }

//   Widget _buildBlueText(String text) {
//     return Text(
//       text,
//       style:
//           const TextStyle(color: Color.fromARGB(255, 3, 39, 100), fontSize: 20),
//     );
//   }

//   Widget _buildInputTextField() {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Form(
//           key: _formfield,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   prefixIcon: const Icon(Icons.email),
//                 ),
//                 validator: (value) {
//                   bool emailValid = RegExp(
//                           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-ZA0-9]+\.[a-zA-Z]+")
//                       .hasMatch(value!);

//                   if (value.isEmpty) {
//                     return 'Enter your email';
//                   } else if (!emailValid) {
//                     return 'Enter Valid email';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 controller: passwordController,
//                 obscureText: passwordToggle,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   prefixIcon: const Icon(Icons.lock),
//                   suffixIcon: InkWell(
//                     onTap: () {
//                       setState(() {
//                         passwordToggle = !passwordToggle;
//                       });
//                     },
//                     child: Icon(passwordToggle
//                         ? Icons.visibility_off
//                         : Icons.visibility),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Enter Your Password';
//                   } else if (passwordController.text.length < 6) {
//                     return 'Paasword Length Should be more than 6 characters';
//                   }
//                   return null;
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRememberForgot() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(
//           child: Checkbox(
//               value: rememberUser,
//               onChanged: (value) {
//                 setState(() {
//                   rememberUser = value!;
//                 });
//               }),
//         ),
//         _buildBlueText('Remember me'),
//         TextButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ForgetPassword(),
//               ),
//             );
//           },
//           child: _buildGreenForTextButton('Forgot Password?'),
//         ),
//       ],
//     );
//   }

//   Widget _buildLoginButton() {
//     return InkWell(
//       onTap: () {
//         if (_formfield.currentState!.validate()) {
//           print('Success');
//           emailController.clear();
//           const HomeScreen();
//         }
//       },
//       child: Container(
//         height: 70,
//         decoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: const Center(
//           child: Text(
//             'Log In',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSignUp() {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildBlueText('Don\'t have account?'),
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         const CountrySignUp()), // Navigate to Signup screen
//               );
//             },
//             child: _buildGreenForTextButton('SignUp Now'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildOtherLogin() {
//     return Center(
//       child: Column(
//         children: [
//           _buildBlueText('Or Login with'),
//           const SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Tab(
//                   icon: Image.asset('assets/googleLogo.png'),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {},
//                 child: Tab(
//                   icon: Image.asset('assets/githubLogo.png'),
//                 ),
//               ),
//               Tab(icon: Image.asset('assets/stackjuniorIcon.png')),

//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:stackjunior/forget_password.dart';
import 'package:stackjunior/register/signup_country.dart';
import 'package:email_validator/email_validator.dart';
import 'package:stackjunior/screen/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  final userInputController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordToggle = false;
  bool isFocused = false;
  String validateMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 236),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              key: _formfield,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 150,
                    width: 300,
                  ),
                  //const SizedBox(height: 10),
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 39, 100),
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: userInputController,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 241, 238, 214),
                      filled: true,
                      hintText: 'Username or Email',
                      border: isFocused
                          ? OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.yellow,
                                width: 1,
                              ),
                            )
                          : OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 1),
                      ),
                      suffixIcon: const Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                    ),
                    validator: (value) {
                      bool isValidEmail(String email) {
                        return EmailValidator.validate(email);
                      }

                      // bool isDigit(String char) {
                      //   return '0'.compareTo(char) <= 0 &&
                      //       char.compareTo('9') <= 0;
                      // }

                      bool isValidUsername(String username) {
                        return username.length > 6 &&
                            username[0].toUpperCase() == username[0];
                      }

                      if (value!.isEmpty) {
                        return 'Enter username of email';
                      } else if (isValidEmail(value) &&
                          isValidUsername(value)) {
                        return 'Enter Valid Email or Username';
                      }
                      return null;
                    },

                    // void validateInput() {
                    //   String userInput = userInputController.text;
                    //   if (isValidEmail(userInput)) {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const HomeScreen(),
                    //       ),
                    //     );
                    //   } else if (isValidUsername(userInput)) {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const HomeScreen(),
                    //       ),
                    //     );
                    //   }
                    //   return;
                    // }

                    // return null;
                    // },
                    // validator: (value) {
                    //   bool isValidEmail(String email) {
                    //     final emailRegExp = RegExp(
                    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-ZA0-9]+\.[a-zA-Z]+");
                    //     return emailRegExp.hasMatch(email);
                    //   }
                    //   bool isDigit(String char) {
                    //       return '0'.compareTo(char) <= 0 &&
                    //           char.compareTo('9') <= 0;
                    //     }

                    //   bool isValidUsername(String username) {
                    //     return username.length < 6 &&
                    //         username[0].toUpperCase() == username[0] &&
                    //         isDigit(username[1]);
                    //   }

                    //   if (isEmail) {
                    //     if (value == null || !isValidEmail(value)) {
                    //       return 'Please enter a valid email';
                    //     } else {
                    //       if (value == null || !isValidUsername(value)) {}
                    //     }
                    //   }
                    // },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: passwordToggle,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 241, 238, 214),
                      filled: true,
                      hintText: 'Password',
                      border: isFocused
                          ? OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.yellow,
                                width: 1,
                              ),
                            )
                          : OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.yellow, width: 1),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passwordToggle = !passwordToggle;
                          });
                        },
                        child: passwordToggle
                            ? const Icon(Icons.visibility_off,
                                color: Colors.black)
                            : const Icon(Icons.visibility, color: Colors.black),
                      ),
                    ),
                    validator: (value) {
                      bool isDigit(String char) {
                        return '0'.compareTo(char) <= 0 &&
                            char.compareTo('9') <= 0;
                      }

                      bool isValidPassword(String password) {
                        return password.length < 6 &&
                            password[0].toUpperCase() == password[0] &&
                            isDigit(password[1]);
                      }

                      if (value!.isEmpty) {
                        return 'Enter Password';
                      } else if (isValidPassword(value)) {
                        return 'Enter a valid password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      if (_formfield.currentState!.validate()) {
                        userInputController.clear();
                        passwordController.clear();
                        const HomeScreen();
                      }
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 199, 0, 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPassword(),
                        ),
                      );
                    },
                    child: const Text(
                      'Forget Password',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 201, 4, 1), fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have account?',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CountrySignUp(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 201, 4, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  //const Row()
                  const Text(
                    'Or Login With',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Tab(
                          icon: Image.asset('assets/googleLogo.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Tab(
                          icon: Image.asset('assets/githubLogo.png'),
                        ),
                      ),
                      Tab(icon: Image.asset('assets/stackjuniorIcon.png')),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
