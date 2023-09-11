import 'package:category_homework/pages/category_page.dart';
import 'package:category_homework/pages/register_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  void _loginButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CategoryPage()),
    );
  }

  void _registerButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Please login to your account.',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle forgot password
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 46),
                  SizedBox(
                    width: double.infinity,
                    child: RawMaterialButton(
                      onPressed: _loginButtonPressed,
                      fillColor: Colors.blue[600],
                      elevation: 0.0,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          '-------- OR --------',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/facebook.jpg",
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 30,),
                          Image.asset(
                              "assets/images/twitter.png",
                              width: 60,
                              height: 60,
                          )
                        ],
                      )

                    ],
                  ),

                  const SizedBox(height: 30,),
                  Container(
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                          InkWell(
                            onTap: _registerButtonPressed,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.blue[600],
                                fontSize: 20,
                              ),
                            ),
                          )
                        ]),
                  )
                ])));
  }
}
